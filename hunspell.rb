##
# KISS + Hunspell (Keep It Simple but no Simpler) 
# => Hunspell binding in 50 lines (thanks to RubyInline :)
#
# Nguyen Tien Dung (dungtn@gmail.com)

require 'rubygems'
require 'inline'

class Hunspell
  inline do |builder|
    builder.add_link_flags("-lhunspell-1.2")
    
    builder.prefix <<-HUNSPELL_H
      typedef struct Hunhandle Hunhandle;
      Hunhandle *Hunspell_create(const char * affpath, const char * dpath);
      int Hunspell_spell(Hunhandle *pHunspell, const char *);
      int Hunspell_suggest(Hunhandle *pHunspell, char*** slst, const char * word);
      void Hunspell_free_list(Hunhandle *pHunspell, char *** slst, int n);

      Hunhandle *pHunspell;
    HUNSPELL_H

    builder.c <<-EOC
      void initialize(const char* affpath, const char* dpath) {
        pHunspell = Hunspell_create(affpath, dpath);
        if (!pHunspell) {
          rb_raise(rb_eRuntimeError, "Failed to initialize Hunspell.");
        }    
      }
    EOC

    builder.c <<-EOC
      VALUE spell(const char* str) {
        return (Hunspell_spell(pHunspell, str) == 1 ? Qtrue : Qfalse);
      }
    EOC

    builder.c <<-EOC
      VALUE suggest(const char* str) {
        int n, i;
        char **slst, **iter;
        VALUE suggestions;
        
        n = Hunspell_suggest(pHunspell, &slst, str);
        suggestions = rb_ary_new2(n);
        for (iter=slst, i=0; i<n; iter++, i++) {
          rb_ary_push(suggestions, rb_str_new2(*iter));
        }

        // Free suggestion lists after use
        Hunspell_free_list(pHunspell, &slst, n);
        return suggestions;
      }
    EOC
  end
end
