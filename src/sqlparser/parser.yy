%lex
%options case-insensitive
%%

/*
\[([^\]])*?\]									return 'BRALITERAL'
*/

([`](\\.|[^"]|\\\")*?[`])+                    	return 'BRALITERAL'
/*
X(['](\\.|[^']|\\\')*?['])+                     return 'XSTRING'
*/
(['](\\.|[^']|\\\')*?['])+                  	return 'SINGLE_QUOTED_STRING'
(["](\\.|[^"]|\\\")*?["])+                    	return 'DOUBLE_QUOTED_STRING'



"--"(.*?)($|\r\n|\r|\n)							/* skip -- comments */

\s+   											/* skip whitespace */

'ABORT'			return 'ABORT'
'ADD'			return 'ADD'
'AFTER'			return 'AFTER'

'ALTER'			return 'ALTER'
'ANALYZE'		return 'ANALYZE'
'AND'			return 'AND'
'AS'			return 'AS'
'ASC'			return 'ASC'
'ATTACH'		return 'ATTACH'
'BEFORE'		return 'BEFORE'
'BEGIN'			return 'BEGIN'
'BETWEEN'		return 'BETWEEN'
'BY'			return 'BY'
'CASCADE'		return 'CASCADE'
'CASE'			return 'CASE'
'CAST'			return 'CAST'
'CHECK'			return 'CHECK'
'COLLATE'		return 'COLLATE'
'COLUMN'		return 'COLUMN'
'CONFLICT'		return 'CONFLICT'
'CONSISTENT_READ' return 'CONSISTENT_READ'
'CONSTRAINT'	return 'CONSTRAINT'
'CREATE'		return 'CREATE'
'CROSS'			return 'CROSS'
'CURRENT_DATE'	return 'CURRENT DATE'
'CURRENT_TIME'	return 'CURRENT TIME'
'CURRENT_TIMESTAMP'		return 'CURRENT TIMESTAMP'
'DATABASE'		return 'DATABASE'
'DEFAULT'		return 'DEFAULT'
'DEFERRABLE'	return 'DEFERRABLE'
'DEFERRED'		return 'DEFERRED'
'DELETE'		return 'DELETE'
'DESC'			return 'DESC'
'DETACH'		return 'DETACH'
'DISTINCT'		return 'DISTINCT'
'DROP'			return 'DROP'
'DESCRIBE'		return 'DESCRIBE'
'EACH'			return 'EACH'
'ELSE'			return 'ELSE'
'END'			return 'END'
'ESCAPE'		return 'ESCAPE'
'EXCEPT'		return 'EXCEPT'
'EXCLUSIVE'		return 'EXCLUSIVE'
'EXISTS'		return 'EXISTS'
'EXPLAIN'		return 'EXPLAIN'
'FAIL'			return 'FAIL'
'FOR'			return 'FOR'
'FOREIGN'		return 'FOREIGN'
'FROM'			return 'FROM'
'FULL'			return 'FULL'
'GLOB'			return 'GLOB'
'GROUP'			return 'GROUP'
'HAVING'		return 'HAVING'
'IF'			return 'IF'
'IGNORE'		return 'IGNORE'
'IMMEDIATE'		return 'IMMEDIATE'
'IN'			return 'IN'
'USE'			return 'USE'
'INDEX'			return 'INDEX'
'INDEXED'		return 'INDEXED'
'INITIALLY'		return 'INITIALLY'
'INNER'			return 'INNER'
'INSERT'		return 'INSERT'
'INSTEAD'		return 'INSTEAD'
'INTERSECT'		return 'INTERSECT'
'INTO'			return 'INTO'
'IS'			return 'IS'
'ISNULL'		return 'ISNULL'
'JOIN'			return 'JOIN'
'KEY'			return 'KEY'
'LEFT'			return 'LEFT'
'LIKE'			return 'LIKE'
'CONTAINS'		return 'CONTAINS'
'LIMIT'			return 'LIMIT'
'MATCH'			return 'MATCH'
'NATURAL'		return 'NATURAL'
'NO'			return 'NO'
'NOT'			return 'NOT'
'NOTNULL'		return 'NOTNULL'
'NULL'			return 'NULL'
'UNDEFINED'		return 'UNDEFINED'
'OF'			return 'OF'
'OFFSET'		return 'OFFSET'
'ON'			return 'ON'
'OR'			return 'OR'
'ORDER'			return 'ORDER'
'OUTER'			return 'OUTER'
'PLAN'			return 'PLAN'
'PRAGMA'		return 'PRAGMA'
'PRIMARY'		return 'PRIMARY'
'QUERY'			return 'QUERY'
'RAISE'			return 'RAISE'
'RECURSIVE'		return 'RECURSIVE'
'REFERENCES'	return 'REFERENCES'
'REGEXP'		return 'REGEXP'
'REINDEX'		return 'REINDEX'
'RELEASE'		return 'RELEASE'
'RENAME'		return 'RENAME'
'REPLACE'		return 'REPLACE'
'RESTRICT'		return 'RESTRICT'
'RIGHT'			return 'RIGHT'
'ROLLBACK'		return 'ROLLBACK'
'ROW'			return 'ROW'
'SELECT'		return 'SELECT'
'SCAN'			return 'SCAN'
'SET'			return 'SET'
'TABLE'			return 'TABLE'
'TEMP'			return 'TEMP'
'THEN'			return 'THEN'
'TO'			return 'TO'
'TRIGGER'		return 'TRIGGER'
'UNION'			return 'UNION'
'UNIQUE'		return 'UNIQUE'
'UPDATE'		return 'UPDATE'
'USING'			return 'USING'
'VACUUM'		return 'VACUUM'
'VALUES'		return 'VALUES'
'VIEW'			return 'VIEW'
'WHEN'			return 'WHEN'
'WHERE'			return 'WHERE'
'WITH'			return 'WITH'
'TRUE'			return 'TRUE'
'FALSE'			return 'FALSE'
'SHOW'			return 'SHOW'
'TABLES'		return 'TABLES'

'STRING'		return 'STRING'
'NUMBER'		return 'NUMBER'
'STRINGSET'		return 'STRINGSET'
'NUMBERSET'		return 'NUMBERSET'
'BINARYSET'		return 'BINARYSET'
'THROUGHPUT'	return 'THROUGHPUT'
'GSI'			return 'GSI'
'LSI'			return 'LSI'
'PROJECTION'	return 'PROJECTION'
'ALL'			return 'ALL'
'KEYS_ONLY'		return 'KEYS_ONLY'
'INCLUDE'		return 'INCLUDE'
'NEW'			return 'NEW'
'PROVISIONED'	return 'PROVISIONED'
'PAY_PER_REQUEST'	return 'PAY_PER_REQUEST'
'DEBUG'			return 'DEBUG'

/* dynamodb reserved keywords taken from https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/ReservedWords.html */
'ALLOCATE'		return 'ALLOCATE'
'ALTER'			return 'ALTER'
'ANALYZE'		return 'ANALYZE'
'AND'			return 'AND'
'ANY'			return 'ANY'
'ARCHIVE'		return 'ARCHIVE'
'ARE'			return 'ARE'
'ARRAY'			return 'ARRAY'
'AS'			return 'AS'
'ASC'			return 'ASC'
'ASCII'			return 'ASCII'
'ASENSITIVE'		return 'ASENSITIVE'
'ASSERTION'			return 'ASSERTION'
'ASYMMETRIC'		return 'ASYMMETRIC'
'AT'			return 'AT'
'ATOMIC'		return 'ATOMIC'
'ATTACH'		return 'ATTACH'
'ATTRIBUTE'		return 'ATTRIBUTE'
'AUTH'			return 'AUTH'
'AUTHORIZATION'		return 'AUTHORIZATION'
'AUTHORIZE'		return 'AUTHORIZE'
'AUTO'			return 'AUTO'
'AVG'			return 'AVG'
'BACK'			return 'BACK'
'BACKUP'		return 'BACKUP'
'BASE'			return 'BASE'
'BATCH'			return 'BATCH'
'BEFORE'		return 'BEFORE'
'BEGIN'			return 'BEGIN'
'BETWEEN'		return 'BETWEEN'
'BIGINT'		return 'BIGINT'
'BINARY'		return 'BINARY'
'BIT'			return 'BIT'
'BLOB'			return 'BLOB'
'BLOCK'			return 'BLOCK'
'BOOLEAN'		return 'BOOLEAN'
'BOTH'			return 'BOTH'
'BREADTH'		return 'BREADTH'
'BUCKET'		return 'BUCKET'
'BULK'		return 'BULK'
'BY'		return 'BY'
'BYTE'		return 'BYTE'
'CALL'		return 'CALL'
'CALLED'		return 'CALLED'
'CALLING'		return 'CALLING'
'CAPACITY'		return 'CAPACITY'
'CASCADE'		return 'CASCADE'
'CASCADED'		return 'CASCADED'
'CASE'		return 'CASE'
'CAST'		return 'CAST'
'CATALOG'		return 'CATALOG'
'CHAR'		return 'CHAR'
'CHARACTER'		return 'CHARACTER'
'CHECK'		return 'CHECK'
'CLASS'		return 'CLASS'
'CLOB'		return 'CLOB'
'CLOSE'		return 'CLOSE'
'CLUSTER'		return 'CLUSTER'
'CLUSTERED'		return 'CLUSTERED'
'CLUSTERING'		return 'CLUSTERING'
'CLUSTERS'		return 'CLUSTERS'
'COALESCE'		return 'COALESCE'
'COLLATE'		return 'COLLATE'
'COLLATION'		return 'COLLATION'
'COLLECTION'		return 'COLLECTION'
'COLUMN'		return 'COLUMN'
'COLUMNS'		return 'COLUMNS'
'COMBINE'		return 'COMBINE'
'COMMENT'		return 'COMMENT'
'COMMIT'		return 'COMMIT'
'COMPACT'		return 'COMPACT'
'COMPILE'		return 'COMPILE'
'COMPRESS'		return 'COMPRESS'
'CONDITION'		return 'CONDITION'
'CONFLICT'		return 'CONFLICT'
'CONNECT'		return 'CONNECT'
'CONNECTION'		return 'CONNECTION'
'CONSISTENCY'		return 'CONSISTENCY'
'CONSISTENT'		return 'CONSISTENT'
'CONSTRAINT'		return 'CONSTRAINT'
'CONSTRAINTS'		return 'CONSTRAINTS'
'CONSTRUCTOR'		return 'CONSTRUCTOR'
'CONSUMED'		return 'CONSUMED'
'CONTINUE'		return 'CONTINUE'
'CONVERT'		return 'CONVERT'
'COPY'		return 'COPY'
'CORRESPONDING'		return 'CORRESPONDING'
'COUNT'		return 'COUNT'
'COUNTER'		return 'COUNTER'
'CREATE'		return 'CREATE'
'CROSS'		return 'CROSS'
'CUBE'		return 'CUBE'
'CURRENT'		return 'CURRENT'
'CURSOR'		return 'CURSOR'
'CYCLE'		return 'CYCLE'
'DATA'		return 'DATA'
'DATABASE'		return 'DATABASE'
'DATE'		return 'DATE'
'DATETIME'		return 'DATETIME'
'DAY'		return 'DAY'
'DEALLOCATE'		return 'DEALLOCATE'
'DEC'		return 'DEC'
'DECIMAL'		return 'DECIMAL'
'DECLARE'		return 'DECLARE'
'DEFAULT'		return 'DEFAULT'
'DEFERRABLE'		return 'DEFERRABLE'
'DEFERRED'		return 'DEFERRED'
'DEFINE'		return 'DEFINE'
'DEFINED'		return 'DEFINED'
'DEFINITION'		return 'DEFINITION'
'DELETE'		return 'DELETE'
'DELIMITED'		return 'DELIMITED'
'DEPTH'		return 'DEPTH'
'DEREF'		return 'DEREF'
'DESC'		return 'DESC'
'DESCRIBE'		return 'DESCRIBE'
'DESCRIPTOR'		return 'DESCRIPTOR'
'DETACH'		return 'DETACH'
'DETERMINISTIC'		return 'DETERMINISTIC'
'DIAGNOSTICS'		return 'DIAGNOSTICS'
'DIRECTORIES'		return 'DIRECTORIES'
'DISABLE'		return 'DISABLE'
'DISCONNECT'		return 'DISCONNECT'
'DISTINCT'		return 'DISTINCT'
'DISTRIBUTE'		return 'DISTRIBUTE'
'DO'		return 'DO'
'DOMAIN'		return 'DOMAIN'
'DOUBLE'		return 'DOUBLE'
'DROP'		return 'DROP'
'DUMP'		return 'DUMP'
'DURATION'		return 'DURATION'
'DYNAMIC'		return 'DYNAMIC'
'EACH'		return 'EACH'
'ELEMENT'		return 'ELEMENT'
'ELSE'		return 'ELSE'
'ELSEIF'		return 'ELSEIF'
'EMPTY'		return 'EMPTY'
'ENABLE'		return 'ENABLE'
'END'		return 'END'
'EQUAL'		return 'EQUAL'
'EQUALS'		return 'EQUALS'
'ERROR'		return 'ERROR'
'ESCAPE'		return 'ESCAPE'
'ESCAPED'		return 'ESCAPED'
'EVAL'		return 'EVAL'
'EVALUATE'		return 'EVALUATE'
'EXCEEDED'		return 'EXCEEDED'
'EXCEPT'		return 'EXCEPT'
'EXCEPTION'		return 'EXCEPTION'
'EXCEPTIONS'		return 'EXCEPTIONS'
'EXCLUSIVE'		return 'EXCLUSIVE'
'EXEC'		return 'EXEC'
'EXECUTE'		return 'EXECUTE'
'EXISTS'		return 'EXISTS'
'EXIT'		return 'EXIT'
'EXPLAIN'		return 'EXPLAIN'
'EXPLODE'		return 'EXPLODE'
'EXPORT'		return 'EXPORT'
'EXPRESSION'		return 'EXPRESSION'
'EXTENDED'		return 'EXTENDED'
'EXTERNAL'		return 'EXTERNAL'
'EXTRACT'		return 'EXTRACT'
'FAIL'		return 'FAIL'
'FALSE'		return 'FALSE'
'FAMILY'		return 'FAMILY'
'FETCH'		return 'FETCH'
'FIELDS'		return 'FIELDS'
'FILE'		return 'FILE'
'FILTER'		return 'FILTER'
'FILTERING'		return 'FILTERING'
'FINAL'		return 'FINAL'
'FINISH'		return 'FINISH'
'FIRST'		return 'FIRST'
'FIXED'		return 'FIXED'
'FLATTERN'		return 'FLATTERN'
'FLOAT'		return 'FLOAT'
'FOR'		return 'FOR'
'FORCE'		return 'FORCE'
'FOREIGN'		return 'FOREIGN'
'FORMAT'		return 'FORMAT'
'FORWARD'		return 'FORWARD'
'FOUND'		return 'FOUND'
'FREE'		return 'FREE'
'FROM'		return 'FROM'
'FULL'		return 'FULL'
'FUNCTION'		return 'FUNCTION'
'FUNCTIONS'		return 'FUNCTIONS'
'GENERAL'		return 'GENERAL'
'GENERATE'		return 'GENERATE'
'GET'		return 'GET'
'GLOB'		return 'GLOB'
'GLOBAL'		return 'GLOBAL'
'GO'		return 'GO'
'GOTO'		return 'GOTO'
'GRANT'		return 'GRANT'
'GREATER'		return 'GREATER'
'GROUP'		return 'GROUP'
'GROUPING'		return 'GROUPING'
'HANDLER'		return 'HANDLER'
'HASH'			return 'HASH'
'HAVE'		return 'HAVE'
'HAVING'		return 'HAVING'
'HEAP'		return 'HEAP'
'HIDDEN'		return 'HIDDEN'
'HOLD'		return 'HOLD'
'HOUR'		return 'HOUR'
'IDENTIFIED'		return 'IDENTIFIED'
'IDENTITY'		return 'IDENTITY'
'IF'		return 'IF'
'IGNORE'		return 'IGNORE'
'IMMEDIATE'		return 'IMMEDIATE'
'IMPORT'		return 'IMPORT'
'IN'		return 'IN'
'INCLUDING'		return 'INCLUDING'
'INCLUSIVE'		return 'INCLUSIVE'
'INCREMENT'		return 'INCREMENT'
'INCREMENTAL'		return 'INCREMENTAL'
'INDEX'		return 'INDEX'
'INDEXED'		return 'INDEXED'
'INDEXES'		return 'INDEXES'
'INDICATOR'		return 'INDICATOR'
'INFINITE'		return 'INFINITE'
'INITIALLY'		return 'INITIALLY'
'INLINE'		return 'INLINE'
'INNER'		return 'INNER'
'INNTER'		return 'INNTER'
'INOUT'		return 'INOUT'
'INPUT'		return 'INPUT'
'INSENSITIVE'		return 'INSENSITIVE'
'INSERT'		return 'INSERT'
'INSTEAD'		return 'INSTEAD'
'INT'		return 'INT'
'INTEGER'		return 'INTEGER'
'INTERSECT'		return 'INTERSECT'
'INTERVAL'		return 'INTERVAL'
'INTO'		return 'INTO'
'INVALIDATE'		return 'INVALIDATE'
'IS'		return 'IS'
'ISOLATION'		return 'ISOLATION'
'ITEM'		return 'ITEM'
'ITEMS'		return 'ITEMS'
'ITERATE'		return 'ITERATE'
'JOIN'		return 'JOIN'
'KEY'		return 'KEY'
'KEYS'		return 'KEYS'
'LAG'		return 'LAG'
'LANGUAGE'		return 'LANGUAGE'
'LARGE'		return 'LARGE'
'LAST'		return 'LAST'
'LATERAL'		return 'LATERAL'
'LEAD'		return 'LEAD'
'LEADING'		return 'LEADING'
'LEAVE'		return 'LEAVE'
'LEFT'		return 'LEFT'
'LENGTH'		return 'LENGTH'
'LESS'		return 'LESS'
'LEVEL'		return 'LEVEL'
'LIKE'		return 'LIKE'
'LIMIT'		return 'LIMIT'
'LIMITED'		return 'LIMITED'
'LINES'		return 'LINES'
'LIST'		return 'LIST'
'LOAD'		return 'LOAD'
'LOCAL'		return 'LOCAL'
'LOCALTIME'		return 'LOCALTIME'
'LOCALTIMESTAMP'		return 'LOCALTIMESTAMP'
'LOCATION'		return 'LOCATION'
'LOCATOR'		return 'LOCATOR'
'LOCK'		return 'LOCK'
'LOCKS'		return 'LOCKS'
'LOG'		return 'LOG'
'LOGED'		return 'LOGED'
'LONG'		return 'LONG'
'LOOP'		return 'LOOP'
'LOWER'		return 'LOWER'
'MAP'		return 'MAP'
'MATCH'		return 'MATCH'
'MATERIALIZED'		return 'MATERIALIZED'
'MAX'		return 'MAX'
'MAXLEN'		return 'MAXLEN'
'MEMBER'		return 'MEMBER'
'MERGE'		return 'MERGE'
'METHOD'		return 'METHOD'
'METRICS'		return 'METRICS'
'MIN'		return 'MIN'
'MINUS'		return 'MINUS'
'MINUTE'		return 'MINUTE'
'MISSING'		return 'MISSING'
'MOD'		return 'MOD'
'MODE'		return 'MODE'
'MODIFIES'		return 'MODIFIES'
'MODIFY'		return 'MODIFY'
'MODULE'		return 'MODULE'
'MONTH'		return 'MONTH'
'MULTI'		return 'MULTI'
'MULTISET'		return 'MULTISET'
'NAME'		return 'NAME'
'NAMES'		return 'NAMES'
'NATIONAL'		return 'NATIONAL'
'NATURAL'		return 'NATURAL'
'NCHAR'		return 'NCHAR'
'NCLOB'		return 'NCLOB'
'NEW'		return 'NEW'
'NEXT'		return 'NEXT'
'NO'		return 'NO'
'NONE'		return 'NONE'
'NOT'		return 'NOT'
'NULL'		return 'NULL'
'NULLIF'		return 'NULLIF'
'NUMBER'		return 'NUMBER'
'NUMERIC'		return 'NUMERIC'
'OBJECT'		return 'OBJECT'
'OF'		return 'OF'
'OFFLINE'		return 'OFFLINE'
'OFFSET'		return 'OFFSET'
'OLD'		return 'OLD'
'ON'		return 'ON'
'ONLINE'		return 'ONLINE'
'ONLY'		return 'ONLY'
'OPAQUE'		return 'OPAQUE'
'OPEN'		return 'OPEN'
'OPERATOR'		return 'OPERATOR'
'OPTION'		return 'OPTION'
'OR'		return 'OR'
'ORDER'		return 'ORDER'
'ORDINALITY'		return 'ORDINALITY'
'OTHER'		return 'OTHER'
'OTHERS'		return 'OTHERS'
'OUT'		return 'OUT'
'OUTER'		return 'OUTER'
'OUTPUT'		return 'OUTPUT'
'OVER'		return 'OVER'
'OVERLAPS'		return 'OVERLAPS'
'OVERRIDE'		return 'OVERRIDE'
'OWNER'		return 'OWNER'
'PAD'		return 'PAD'
'PARALLEL'		return 'PARALLEL'
'PARAMETER'		return 'PARAMETER'
'PARAMETERS'		return 'PARAMETERS'
'PARTIAL'		return 'PARTIAL'
'PARTITION'		return 'PARTITION'
'PARTITIONED'		return 'PARTITIONED'
'PARTITIONS'		return 'PARTITIONS'
'PATH'		return 'PATH'
'PERCENT'		return 'PERCENT'
'PERCENTILE'		return 'PERCENTILE'
'PERMISSION'		return 'PERMISSION'
'PERMISSIONS'		return 'PERMISSIONS'
'PIPE'		return 'PIPE'
'PIPELINED'		return 'PIPELINED'
'PLAN'		return 'PLAN'
'POOL'		return 'POOL'
'POSITION'		return 'POSITION'
'PRECISION'		return 'PRECISION'
'PREPARE'		return 'PREPARE'
'PRESERVE'		return 'PRESERVE'
'PRIMARY'		return 'PRIMARY'
'PRIOR'		return 'PRIOR'
'PRIVATE'		return 'PRIVATE'
'PRIVILEGES'		return 'PRIVILEGES'
'PROCEDURE'		return 'PROCEDURE'
'PROCESSED'		return 'PROCESSED'
'PROJECT'		return 'PROJECT'
'PROJECTION'		return 'PROJECTION'
'PROPERTY'		return 'PROPERTY'
'PROVISIONING'		return 'PROVISIONING'
'PUBLIC'		return 'PUBLIC'
'PUT'		return 'PUT'
'QUERY'		return 'QUERY'
'QUIT'		return 'QUIT'
'QUORUM'		return 'QUORUM'
'RAISE'		return 'RAISE'
'RANDOM'		return 'RANDOM'
'RANGE'		return 'RANGE'
'RANK'		return 'RANK'
'RAW'		return 'RAW'
'READ'		return 'READ'
'READS'		return 'READS'
'REAL'		return 'REAL'
'REBUILD'		return 'REBUILD'
'RECORD'		return 'RECORD'
'RECURSIVE'		return 'RECURSIVE'
'REDUCE'		return 'REDUCE'
'REF'		return 'REF'
'REFERENCE'		return 'REFERENCE'
'REFERENCES'		return 'REFERENCES'
'REFERENCING'		return 'REFERENCING'
'REGEXP'		return 'REGEXP'
'REGION'		return 'REGION'
'REINDEX'		return 'REINDEX'
'RELATIVE'		return 'RELATIVE'
'RELEASE'		return 'RELEASE'
'REMAINDER'		return 'REMAINDER'
'RENAME'		return 'RENAME'
'REPEAT'		return 'REPEAT'
'REPLACE'		return 'REPLACE'
'REQUEST'		return 'REQUEST'
'RESET'		return 'RESET'
'RESIGNAL'		return 'RESIGNAL'
'RESOURCE'		return 'RESOURCE'
'RESPONSE'		return 'RESPONSE'
'RESTORE'		return 'RESTORE'
'RESTRICT'		return 'RESTRICT'
'RESULT'		return 'RESULT'
'RETURN'		return 'RETURN'
'RETURNING'		return 'RETURNING'
'RETURNS'		return 'RETURNS'
'REVERSE'		return 'REVERSE'
'REVOKE'		return 'REVOKE'
'RIGHT'		return 'RIGHT'
'ROLE'		return 'ROLE'
'ROLES'		return 'ROLES'
'ROLLBACK'		return 'ROLLBACK'
'ROLLUP'		return 'ROLLUP'
'ROUTINE'		return 'ROUTINE'
'ROW'		return 'ROW'
'ROWS'		return 'ROWS'
'RULE'		return 'RULE'
'RULES'		return 'RULES'
'SAMPLE'		return 'SAMPLE'
'SATISFIES'		return 'SATISFIES'
'SAVE'		return 'SAVE'
'SAVEPOINT'		return 'SAVEPOINT'
'SCAN'		return 'SCAN'
'SCHEMA'		return 'SCHEMA'
'SCOPE'		return 'SCOPE'
'SCROLL'		return 'SCROLL'
'SEARCH'		return 'SEARCH'
'SECOND'		return 'SECOND'
'SECTION'		return 'SECTION'
'SEGMENT'		return 'SEGMENT'
'SEGMENTS'		return 'SEGMENTS'
'SELECT'		return 'SELECT'
'SELF'		return 'SELF'
'SEMI'		return 'SEMI'
'SENSITIVE'		return 'SENSITIVE'
'SEPARATE'		return 'SEPARATE'
'SEQUENCE'		return 'SEQUENCE'
'SERIALIZABLE'		return 'SERIALIZABLE'
'SESSION'		return 'SESSION'
'SET'		return 'SET'
'SETS'		return 'SETS'
'SHARD'		return 'SHARD'
'SHARE'		return 'SHARE'
'SHARED'		return 'SHARED'
'SHORT'		return 'SHORT'
'SHOW'		return 'SHOW'
'SIGNAL'		return 'SIGNAL'
'SIMILAR'		return 'SIMILAR'
'SIZE'		return 'SIZE'
'SKEWED'		return 'SKEWED'
'SMALLINT'		return 'SMALLINT'
'SNAPSHOT'		return 'SNAPSHOT'
'SOME'		return 'SOME'
'SOURCE'		return 'SOURCE'
'SPACE'		return 'SPACE'
'SPACES'		return 'SPACES'
'SPARSE'		return 'SPARSE'
'SPECIFIC'		return 'SPECIFIC'
'SPECIFICTYPE'		return 'SPECIFICTYPE'
'SPLIT'		return 'SPLIT'
'SQL'		return 'SQL'
'SQLCODE'		return 'SQLCODE'
'SQLERROR'		return 'SQLERROR'
'SQLEXCEPTION'		return 'SQLEXCEPTION'
'SQLSTATE'		return 'SQLSTATE'
'SQLWARNING'		return 'SQLWARNING'
'START'		return 'START'
'STATE'		return 'STATE'
'STATIC'		return 'STATIC'
'STATUS'		return 'STATUS'
'STORAGE'		return 'STORAGE'
'STORE'		return 'STORE'
'STORED'		return 'STORED'
'STREAM'		return 'STREAM'
'STRING'		return 'STRING'
'STRUCT'		return 'STRUCT'
'STYLE'		return 'STYLE'
'SUB'		return 'SUB'
'SUBMULTISET'		return 'SUBMULTISET'
'SUBPARTITION'		return 'SUBPARTITION'
'SUBSTRING'		return 'SUBSTRING'
'SUBTYPE'		return 'SUBTYPE'
'SUM'		return 'SUM'
'SUPER'		return 'SUPER'
'SYMMETRIC'		return 'SYMMETRIC'
'SYNONYM'		return 'SYNONYM'
'SYSTEM'		return 'SYSTEM'
'TABLE'		return 'TABLE'
'TABLESAMPLE'		return 'TABLESAMPLE'
'TEMP'		return 'TEMP'
'TEMPORARY'		return 'TEMPORARY'
'TERMINATED'		return 'TERMINATED'
'TEXT'		return 'TEXT'
'THAN'		return 'THAN'
'THEN'		return 'THEN'
'THROUGHPUT'		return 'THROUGHPUT'
'TIME'		return 'TIME'
'TIMESTAMP'		return 'TIMESTAMP'
'TIMEZONE'		return 'TIMEZONE'
'TINYINT'		return 'TINYINT'
'TO'		return 'TO'
'TOKEN'		return 'TOKEN'
'TOTAL'		return 'TOTAL'
'TOUCH'		return 'TOUCH'
'TRAILING'		return 'TRAILING'
'TRANSACTION'		return 'TRANSACTION'
'TRANSFORM'		return 'TRANSFORM'
'TRANSLATE'		return 'TRANSLATE'
'TRANSLATION'		return 'TRANSLATION'
'TREAT'		return 'TREAT'
'TRIGGER'		return 'TRIGGER'
'TRIM'		return 'TRIM'
'TRUE'		return 'TRUE'
'TRUNCATE'		return 'TRUNCATE'
'TTL'		return 'TTL'
'TUPLE'		return 'TUPLE'
'TYPE'		return 'TYPE'
'UNDER'		return 'UNDER'
'UNDO'		return 'UNDO'
'UNION'		return 'UNION'
'UNIQUE'		return 'UNIQUE'
'UNIT'		return 'UNIT'
'UNKNOWN'		return 'UNKNOWN'
'UNLOGGED'		return 'UNLOGGED'
'UNNEST'		return 'UNNEST'
'UNPROCESSED'		return 'UNPROCESSED'
'UNSIGNED'		return 'UNSIGNED'
'UNTIL'		return 'UNTIL'
'UPDATE'		return 'UPDATE'
'UPPER'		return 'UPPER'
'URL'		return 'URL'
'USAGE'		return 'USAGE'
'USE'		return 'USE'
'USER'		return 'USER'
'USERS'		return 'USERS'
'USING'		return 'USING'
'UUID'		return 'UUID'
'VACUUM'		return 'VACUUM'
'VALUE'		return 'VALUE'
'VALUED'		return 'VALUED'
'VALUES'		return 'VALUES'
'VARCHAR'		return 'VARCHAR'
'VARIABLE'		return 'VARIABLE'
'VARIANCE'		return 'VARIANCE'
'VARINT'		return 'VARINT'
'VARYING'		return 'VARYING'
'VIEW'		return 'VIEW'
'VIEWS'		return 'VIEWS'
'VIRTUAL'		return 'VIRTUAL'
'VOID'		return 'VOID'
'WAIT'		return 'WAIT'
'WHEN'		return 'WHEN'
'WHENEVER'		return 'WHENEVER'
'WHERE'		return 'WHERE'
'WHILE'		return 'WHILE'
'WINDOW'		return 'WINDOW'
'WITH'		return 'WITH'
'WITHIN'		return 'WITHIN'
'WITHOUT'		return 'WITHOUT'
'WORK'		return 'WORK'
'WRAPPED'		return 'WRAPPED'
'WRITE'		return 'WRITE'
'YEAR'		return 'YEAR'
'ZONE'		return 'ZONE'

/* Javascript Objects and Functions */
'JSON'		return 'JSON'
'MATH'		return 'MATH'
'UUID'		return 'UUID'


[-]?(\d*[.])?\d+[eE]\d+							return 'NUMBER'
[-]?(\d*[.])?\d+								return 'NUMBER'

'~'												return 'TILDEs'
'+='											return 'PLUSEQ'
'+'												return 'PLUS'
'-' 											return 'MINUS'
'*'												return 'STAR'
'/'												return 'SLASH'
'%'												return 'REM'
'>>'											return 'RSHIFT'
'<<'											return 'LSHIFT'
'<>'											return 'NE'
'!='											return 'NE'
'>='											return 'GE'
'>'												return 'GT'
'<='											return 'LE'
'<'												return 'LT'
'='												return 'EQ'
'&'												return 'BITAND'
'|'												return 'BITOR'

'('												return 'LPAR'
')'												return 'RPAR'

'{'												return 'JSONLPAR'
'}'												return 'JSONRPAR'

'['												return 'ARRAYLPAR'
']'												return 'ARRAYRPAR'

'.'												return 'DOT'
','												return 'COMMA'
':'												return 'COLON'
';'												return 'SEMICOLON'
'$'												return 'DOLLAR'
'?'												return 'QUESTION'
'^'												return 'CARET'

[a-zA-Z_][a-zA-Z_0-9]*                       	return 'LITERAL'

<<EOF>>               							return 'EOF'
.												return 'INVALID'

/lex

/* %left unary_operator binary_operator  */

%left OR
%left AND
%left BETWEEN
%right NOT
%left IS MATCH LIKE CONTAINS IN ISNULL NOTNULL NE EQ
%left ESCAPE
%left GT LE LT GE
%left BITAND BITOR LSHIFT RSHIFT
$left PLUS MINUS
%left STAR SLASH REM
%left CONCAT
%left COLLATE
%right BITNOT


%start main

%%
main
	: sql_stmt_list EOF
		{
			$$ = $1;
			return $$;
		}
	;

sql_stmt_list
	: sql_stmt_list SEMICOLON sql_stmt
		{ $$ = $1; if($3) $$.push($3); }
	| sql_stmt
		{ $$ = [$1]; }
	;
/*
sql_stmt
	: alter_table_stmt
	| create_index_stmt



	;
*/
sql_stmt
	: select_stmt
	| insert_stmt
	| update_stmt
	| replace_stmt
	| delete_stmt
	| create_table_stmt
	| show_tables_stmt
	| drop_table_stmt
	| describe_table_stmt
	| drop_index_stmt
	| scan_stmt
	| debug_stmt
	;

name
	: LITERAL
		{ $$ = $1; }
	| BRALITERAL
		{ $$ = $1.substr(1,$1.length-2); }
	;
name_or_keyword
	: LITERAL
		{ $$ = $1; }
	| BRALITERAL
		{ $$ = $1.substr(1,$1.length-2); }
	| KEYWORD
		{ $$ = $1 }
	;

database_table_name
	: name DOT name
		{ $$ = {database:$1, table:$3}; }
	| name
		{ $$ = {table:$1}; }
	;

dynamodb_table_name
	: name
		{ $$ = $1; }
	;
dynamodb_table_name_or_keyword
	: name_or_keyword
		{ $$ = $1; }
	;
dynamodb_index_name_or_keyword
	: name_or_keyword
		{ $$ = $1; }
	;
dynamodb_attribute_name_or_keyword
	: name_or_keyword
		{ $$ = $1; }
	;



database_index_name
	: name
		{ $$ = {index:$1}; }
	;

dynamodb_index_name
	: name
		{ $$ = $1; }
	;


signed_number
	: NUMBER
		{ $$ = $1; }
	;

string_literal
	: SINGLE_QUOTED_STRING
		{ $$ = $1; }
	| DOUBLE_QUOTED_STRING
		{ $$ = $1; }
	| XSTRING
		{ $$ = $1; }
	;

literal_value
	: signed_number
		{ $$ = {type:'number', number:$1}; }
	| string_literal
		{ $$ = {type:'string', string: $1}}
	;

boolean
	: TRUE
		{ $$ = true; }
	| FALSE
		{ $$ = false; }
	;

boolean_value
	: TRUE
		{ $$ = {type:'boolean', value: true }; }
	| FALSE
		{ $$ = {type:'boolean', value: false }; }
	;