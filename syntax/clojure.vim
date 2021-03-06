" Vim syntax file
" Language:	Clojure
" Maintainer:	Taylor Venable <taylor@metasyntax.net>
" 		(forked from Meikel Brandmeyer <mb@kotka.de>)
" Original:	Toralf Wittner <toralf.wittner@gmail.com>
" Last Change:	2009-05-14
" Version:	r167
" URL:		http://bitbucket.org/taylor_venable/metasyntax/src/tip/Config/vim/syntax/clojure.vim

if version < 600
    syntax clear
elseif exists("b:current_syntax")
    finish
endif

" Highlight superfluous closing parens, brackets and braces.
syn match clojureError "]\|}\|)"

syn keyword clojureConstant	nil

syn keyword clojureBoolean	true false

syn keyword clojureCond		if if-not if-let when when-not when-let when-first cond condp

syn keyword clojureException	try catch finally throw

syn keyword clojureRepeat	recur map mapcat reduce filter for doseq dorun doall dotimes

syn keyword clojureSpecial	def do fn if let new quote var loop

syn keyword clojureVariable	*warn-on-reflection* this *agent* *ns* *in* *out* *err* *command-line-args* *print-meta* *print-readably* *print-length* *allow-unresolved-args* *compile-files* *compile-path* *file* *flush-on-newline* *macro-meta* *math-context* *print-dup* *print-level* *use-context-classloader* *source-path*

syn keyword clojureDefine	def- defn defn- defmacro defmulti defmethod defstruct defonce declare definline

syn keyword clojureMacro	and or -> assert with-out-str with-in-str with-open locking destructure ns dosync binding delay lazy-cons lazy-cat time assert doc with-precision with-local-vars .. doto memfn proxy amap areduce refer-clojure future lazy-seq letfn

syn keyword clojureFunc		= not= not nil? false? true? complement identical? string? symbol? map? seq? vector? keyword? var?
syn keyword clojureFunc		special-symbol? apply partial comp constantly identity comparator fn? re-matcher re-find re-matches
syn keyword clojureFunc		re-groups re-seq re-pattern str pr prn print println pr-str prn-str print-str println-str newline
syn keyword clojureFunc		macroexpand macroexpand-1 monitor-enter monitor-exit eval find-doc file-seq flush hash load load-file
syn keyword clojureFunc		print-doc read read-line scan slurp subs sync test format printf loaded-libs use require load-reader
syn keyword clojureFunc		load-string + - * / < <= == >= > dec inc min max neg? pos? quot rem zero? rand rand-int decimal? even?
syn keyword clojureFunc		odd? float? integer? number? ratio? rational? bit-and bit-or bit-xor bit-not bit-shift-left bit-shift-right
syn keyword clojureFunc		symbol keyword gensym count conj seq first rest ffirst fnext nfirst nnext second every? not-every? some
syn keyword clojureFunc		not-any? concat reverse cycle interleave interpose split-at split-with take take-nth take-while drop
syn keyword clojureFunc		drop-while repeat replicate iterate range into distinct sort sort-by zipmap line-seq butlast last nth
syn keyword clojureFunc		nthnext next repeatedly tree-seq enumeration-seq iterator-seq coll? associative? empty? list? reversible?
syn keyword clojureFunc		sequential? sorted? list list* cons peek pop vec vector peek pop rseq subvec array-map hash-map sorted-map
syn keyword clojureFunc		sorted-map-by assoc assoc-in dissoc get get-in contains? find select-keys update-in key val keys vals merge
syn keyword clojureFunc		merge-with max-key min-key create-struct struct-map struct accessor remove-method meta with-meta in-ns refer
syn keyword clojureFunc		create-ns find-ns all-ns remove-ns import ns-name ns-map ns-interns ns-publics ns-imports ns-refers ns-resolve
syn keyword clojureFunc		resolve ns-unmap name namespace require use set! find-var var-get var-set ref deref ensure alter ref-set
syn keyword clojureFunc		commute agent send send-off agent-errors clear-agent-errors await await-for instance? bean alength aget aset
syn keyword clojureFunc		aset-boolean aset-byte aset-char aset-double aset-float aset-int aset-long aset-short make-array to-array
syn keyword clojureFunc		to-array-2d into-array int long float double char boolean short byte parse add-classpath cast class
syn keyword clojureFunc		get-proxy-class proxy-mappings update-proxy hash-set sorted-set set disj set? aclone add-watch alias
syn keyword clojureFunc		alter-var-root ancestors await1 bases bigdec bigint bit-and-not bit-clear bit-flip bit-set bit-test counted?
syn keyword clojureFunc		char-escape-string char-name-string class? compare compile construct-proxy delay? derive descendants distinct?
syn keyword clojureFunc		double-array doubles drop-last empty float-array floats force gen-class get-validator int-array ints isa?
syn keyword clojureFunc		long-array longs make-hierarchy method-sig not-empty ns-aliases ns-unalias num partition parents pmap
syn keyword clojureFunc		prefer-method primitives-classnames print-ctor print-dup print-method print-simple print-special-doc
syn keyword clojureFunc		proxy-call-with-super proxy-super rationalize read-string remove remove-watch replace resultset-seq
syn keyword clojureFunc		rsubseq seque set-validator! shutdown-agents subseq special-form-anchor syntax-symbol-anchor supers
syn keyword clojureFunc		unchecked-add unchecked-dec unchecked-divide unchecked-inc unchecked-multiply unchecked-negate
syn keyword clojureFunc		unchecked-subtract underive xml-seq trampoline atom compare-and-set! ifn? gen-interface intern init-proxy
syn keyword clojureFunc		io! memoize proxy-name swap! release-pending-sends the-ns unquote while unchecked-remainder add-watcher
syn keyword clojureFunc		alter-meta! future-call methods mod pcalls prefers pvalues print-namespace-doc remove-watcher reset!
syn keyword clojureFunc		reset-meta! type vary-meta unquote-splicing sequence

syn cluster clojureAtomCluster   contains=clojureError,clojureFunc,clojureMacro,clojureCond,clojureDefine,clojureRepeat,clojureException,clojureConstant,clojureVariable,clojureSpecial,clojureKeyword,clojureString,clojureCharacter,clojureNumber,clojureRational,clojureFloat,clojureBoolean,clojureQuote,clojureUnquote,clojureDispatch,clojurePattern
syn cluster clojureTopCluster    contains=@clojureAtomCluster,clojureComment,clojureSexp,clojureAnonFn,clojureVector,clojureMap,clojureSet

syn keyword clojureTodo contained FIXME XXX
syn match   clojureComment contains=clojureTodo ";.*$"

syn match   clojureKeyword ":\{1,2}\a[a-zA-Z0-9?!\-_+*\./=<>]*"

syn region  clojureString start=/"/ end=/"/ skip=/\\"/

syn match   clojureCharacter "\\."
syn match   clojureCharacter "\\[0-7]\{3\}"
syn match   clojureCharacter "\\u[0-9]\{4\}"
syn match   clojureCharacter "\\space"
syn match   clojureCharacter "\\tab"
syn match   clojureCharacter "\\newline"
syn match   clojureCharacter "\\return"
syn match   clojureCharacter "\\backspace"
syn match   clojureCharacter "\\formfeed"

syn match   clojureNumber "\<-\?[0-9]\+M\?\>"
syn match   clojureRational "\<-\?[0-9]\+/[0-9]\+\>"
syn match   clojureFloat "\<-\?[0-9]\+\.[0-9]\+\([eE][-+]\=[0-9]\+\)\=\>"

syn match   clojureQuote "\('\|`\)"
syn match   clojureUnquote "\(\~@\|\~\)"
syn match   clojureDispatch "\(#^\|#'\)"

syn match   clojureAnonArg contained "%\(\d\|&\)\?"
syn match   clojureVarArg contained "&"

if exists("g:clj_paren_rainbow") && g:clj_paren_rainbow != 0
	syn region clojureSexpLevel0 matchgroup=clojureParen0 start="(" matchgroup=clojureParen0 end=")"           contains=@clojureTopCluster,clojureSexpLevel1
	syn region clojureSexpLevel1 matchgroup=clojureParen1 start="(" matchgroup=clojureParen1 end=")" contained contains=@clojureTopCluster,clojureSexpLevel2
	syn region clojureSexpLevel2 matchgroup=clojureParen2 start="(" matchgroup=clojureParen2 end=")" contained contains=@clojureTopCluster,clojureSexpLevel3
	syn region clojureSexpLevel3 matchgroup=clojureParen3 start="(" matchgroup=clojureParen3 end=")" contained contains=@clojureTopCluster,clojureSexpLevel4
	syn region clojureSexpLevel4 matchgroup=clojureParen4 start="(" matchgroup=clojureParen4 end=")" contained contains=@clojureTopCluster,clojureSexpLevel5
	syn region clojureSexpLevel5 matchgroup=clojureParen5 start="(" matchgroup=clojureParen5 end=")" contained contains=@clojureTopCluster,clojureSexpLevel6
	syn region clojureSexpLevel6 matchgroup=clojureParen6 start="(" matchgroup=clojureParen6 end=")" contained contains=@clojureTopCluster,clojureSexpLevel7
	syn region clojureSexpLevel7 matchgroup=clojureParen7 start="(" matchgroup=clojureParen7 end=")" contained contains=@clojureTopCluster,clojureSexpLevel8
	syn region clojureSexpLevel8 matchgroup=clojureParen8 start="(" matchgroup=clojureParen8 end=")" contained contains=@clojureTopCluster,clojureSexpLevel9
	syn region clojureSexpLevel9 matchgroup=clojureParen9 start="(" matchgroup=clojureParen9 end=")" contained contains=@clojureTopCluster,clojureSexpLevel0
else
	syn region clojureSexp       matchgroup=clojureParen0 start="(" matchgroup=clojureParen0 end=")"           contains=@clojureTopCluster
endif

syn region  clojureAnonFn  matchgroup=clojureParen0 start="#(" matchgroup=clojureParen0 end=")"  contains=@clojureTopCluster,clojureAnonArg,clojureSexpLevel0
syn region  clojureVector  matchgroup=clojureParen0 start="\[" matchgroup=clojureParen0 end="\]" contains=@clojureTopCluster,clojureVarArg,clojureSexpLevel0
syn region  clojureMap     matchgroup=clojureParen0 start="{"  matchgroup=clojureParen0 end="}"  contains=@clojureTopCluster,clojureSexpLevel0
syn region  clojureSet     matchgroup=clojureParen0 start="#{" matchgroup=clojureParen0 end="}"  contains=@clojureTopCluster,clojureSexpLevel0
syn region  clojurePattern                          start=/#"/                          end=/"/  skip=/\\"/

syn region  clojureCommentSexp                          start="("                                       end=")" transparent contained contains=clojureCommentSexp
syn region  clojureComment     matchgroup=clojureParen0 start="(comment"rs=s+1 matchgroup=clojureParen0 end=")"                       contains=clojureCommentSexp

syn sync match matchPlace grouphere NONE "^[^ \t]"

if version >= 600
	command -nargs=+ HiLink highlight default link <args>
else
	command -nargs=+ HiLink highlight         link <args>
endif

HiLink clojureConstant  Constant
HiLink clojureBoolean   Boolean
HiLink clojureCharacter Character
HiLink clojureKeyword   Operator
HiLink clojureNumber    Number
HiLink clojureRational  Number
HiLink clojureFloat     Float
HiLink clojureString    String
HiLink clojurePattern   Constant

HiLink clojureVariable  Identifier
HiLink clojureCond      Conditional
HiLink clojureDefine    Define
HiLink clojureException Exception
HiLink clojureFunc      Function
HiLink clojureMacro     Macro
HiLink clojureRepeat    Repeat

HiLink clojureQuote     Special
HiLink clojureUnquote   Special
HiLink clojureDispatch  Special
HiLink clojureAnonArg   Special
HiLink clojureVarArg    Special
HiLink clojureSpecial   Special

HiLink clojureComment   Comment
HiLink clojureTodo      Todo

HiLink clojureError     Error

HiLink clojureParen0    Delimiter

if exists("g:clj_paren_rainbow") && g:clj_paren_rainbow != 0
	if &background == "dark"
		highlight default clojureParen1 ctermfg=yellow      guifg=orange1
		highlight default clojureParen2 ctermfg=green       guifg=yellow1
		highlight default clojureParen3 ctermfg=cyan        guifg=greenyellow
		highlight default clojureParen4 ctermfg=magenta     guifg=green1
		highlight default clojureParen5 ctermfg=red         guifg=springgreen1
		highlight default clojureParen6 ctermfg=yellow      guifg=cyan1
		highlight default clojureParen7 ctermfg=green       guifg=slateblue1
		highlight default clojureParen8 ctermfg=cyan        guifg=magenta1
		highlight default clojureParen9 ctermfg=magenta     guifg=purple1
	else
		highlight default clojureParen1 ctermfg=darkyellow  guifg=orangered3
		highlight default clojureParen2 ctermfg=darkgreen   guifg=orange2
		highlight default clojureParen3 ctermfg=blue        guifg=yellow3
		highlight default clojureParen4 ctermfg=darkmagenta guifg=olivedrab4
		highlight default clojureParen5 ctermfg=red         guifg=green4
		highlight default clojureParen6 ctermfg=darkyellow  guifg=paleturquoise3
		highlight default clojureParen7 ctermfg=darkgreen   guifg=deepskyblue4
		highlight default clojureParen8 ctermfg=blue        guifg=darkslateblue
		highlight default clojureParen9 ctermfg=darkmagenta guifg=darkviolet
	endif
endif

delcommand HiLink

let b:current_syntax = "clojure"
