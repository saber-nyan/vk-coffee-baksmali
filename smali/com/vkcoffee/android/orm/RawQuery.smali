.class public final Lcom/vkcoffee/android/orm/RawQuery;
.super Ljava/lang/Object;
.source "RawQuery.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final BOOLEAN_FALSE:Ljava/lang/String; = "0"

.field private static final BOOLEAN_TRUE:Ljava/lang/String; = "1"

.field private static final EMPTY_STRING:Ljava/lang/String; = ""

.field private static final ESCAPE_MATCH:Ljava/lang/String; = "\'"

.field private static final ESCAPE_REPLACE:Ljava/lang/String; = "\\\'"


# instance fields
.field private mCompiledStatement:Ljava/lang/String;

.field private mEntityManager:Lcom/vkcoffee/android/orm/EntityManager;

.field private mMetaData:Lcom/vkcoffee/android/orm/ClassMetaData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vkcoffee/android/orm/ClassMetaData",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mSqlQuery:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/orm/EntityManager;Lcom/vkcoffee/android/orm/ClassMetaData;Ljava/lang/String;)V
    .locals 1
    .param p1, "em"    # Lcom/vkcoffee/android/orm/EntityManager;
    .param p3, "sql"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vkcoffee/android/orm/EntityManager;",
            "Lcom/vkcoffee/android/orm/ClassMetaData",
            "<TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 28
    .local p0, "this":Lcom/vkcoffee/android/orm/RawQuery;, "Lcom/vkcoffee/android/orm/RawQuery<TT;>;"
    .local p2, "metadata":Lcom/vkcoffee/android/orm/ClassMetaData;, "Lcom/vkcoffee/android/orm/ClassMetaData<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/vkcoffee/android/orm/RawQuery;->mEntityManager:Lcom/vkcoffee/android/orm/EntityManager;

    .line 30
    iput-object p2, p0, Lcom/vkcoffee/android/orm/RawQuery;->mMetaData:Lcom/vkcoffee/android/orm/ClassMetaData;

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/vkcoffee/android/orm/RawQuery;->mSqlQuery:Ljava/lang/StringBuilder;

    .line 32
    return-void
.end method

.method private applyParams()Ljava/lang/String;
    .locals 7

    .prologue
    .line 66
    .local p0, "this":Lcom/vkcoffee/android/orm/RawQuery;, "Lcom/vkcoffee/android/orm/RawQuery<TT;>;"
    iget-object v3, p0, Lcom/vkcoffee/android/orm/RawQuery;->mParams:Ljava/util/Map;

    if-eqz v3, :cond_0

    .line 69
    iget-object v3, p0, Lcom/vkcoffee/android/orm/RawQuery;->mParams:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 70
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/vkcoffee/android/orm/RawQuery;->keyToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 71
    .local v1, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/vkcoffee/android/orm/RawQuery;->mSqlQuery:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 72
    .local v2, "start":I
    iget-object v3, p0, Lcom/vkcoffee/android/orm/RawQuery;->mSqlQuery:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lcom/vkcoffee/android/orm/RawQuery;->escapeValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v2, v5, v6}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 76
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "start":I
    :cond_0
    iget-object v3, p0, Lcom/vkcoffee/android/orm/RawQuery;->mSqlQuery:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/vkcoffee/android/orm/RawQuery;->mCompiledStatement:Ljava/lang/String;

    return-object v3
.end method

.method static escapeValue(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    .line 80
    if-nez p0, :cond_0

    .line 81
    const-string/jumbo v1, ""

    .line 93
    .end local p0    # "value":Ljava/lang/Object;
    .local v0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return-object v1

    .line 83
    .end local v0    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 84
    .restart local v0    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v1, Ljava/lang/String;

    if-ne v1, v0, :cond_1

    .line 85
    check-cast p0, Ljava/lang/String;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-static {p0}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 86
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_1
    const-class v1, Ljava/lang/Boolean;

    if-ne v1, v0, :cond_3

    .line 87
    check-cast p0, Ljava/lang/Boolean;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "1"

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "0"

    goto :goto_0

    .line 88
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_3
    const-class v1, Lcom/vkcoffee/android/orm/RawQuery;

    if-ne v1, v0, :cond_4

    .line 89
    check-cast p0, Lcom/vkcoffee/android/orm/RawQuery;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Lcom/vkcoffee/android/orm/RawQuery;->toSQL()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 90
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_4
    instance-of v1, p0, Ljava/lang/Enum;

    if-eqz v1, :cond_5

    .line 91
    check-cast p0, Ljava/lang/Enum;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 93
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_5
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static keyToken(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    const/16 v1, 0x3a

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public count()J
    .locals 4

    .prologue
    .line 50
    .local p0, "this":Lcom/vkcoffee/android/orm/RawQuery;, "Lcom/vkcoffee/android/orm/RawQuery<TT;>;"
    iget-object v1, p0, Lcom/vkcoffee/android/orm/RawQuery;->mEntityManager:Lcom/vkcoffee/android/orm/EntityManager;

    invoke-virtual {v1}, Lcom/vkcoffee/android/orm/EntityManager;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {p0}, Lcom/vkcoffee/android/orm/RawQuery;->toSQL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 53
    .local v0, "sql":Landroid/database/sqlite/SQLiteStatement;
    :try_start_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 55
    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_0
    return-wide v2

    .line 55
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    .line 56
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_1
    throw v1
.end method

.method public execute()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, "this":Lcom/vkcoffee/android/orm/RawQuery;, "Lcom/vkcoffee/android/orm/RawQuery<TT;>;"
    iget-object v0, p0, Lcom/vkcoffee/android/orm/RawQuery;->mEntityManager:Lcom/vkcoffee/android/orm/EntityManager;

    iget-object v1, p0, Lcom/vkcoffee/android/orm/RawQuery;->mMetaData:Lcom/vkcoffee/android/orm/ClassMetaData;

    iget-object v1, v1, Lcom/vkcoffee/android/orm/ClassMetaData;->mTargetClass:Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/vkcoffee/android/orm/RawQuery;->toSQL()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/vkcoffee/android/orm/EntityManager;->executeRawQuery(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/vkcoffee/android/orm/RawQuery;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/vkcoffee/android/orm/RawQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 35
    .local p0, "this":Lcom/vkcoffee/android/orm/RawQuery;, "Lcom/vkcoffee/android/orm/RawQuery<TT;>;"
    iget-object v0, p0, Lcom/vkcoffee/android/orm/RawQuery;->mCompiledStatement:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 36
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Statement is already compiled"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/orm/RawQuery;->mParams:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/orm/RawQuery;->mParams:Ljava/util/Map;

    .line 41
    :cond_1
    iget-object v0, p0, Lcom/vkcoffee/android/orm/RawQuery;->mParams:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    return-object p0
.end method

.method public toSQL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    .local p0, "this":Lcom/vkcoffee/android/orm/RawQuery;, "Lcom/vkcoffee/android/orm/RawQuery<TT;>;"
    iget-object v0, p0, Lcom/vkcoffee/android/orm/RawQuery;->mCompiledStatement:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/orm/RawQuery;->mCompiledStatement:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/vkcoffee/android/orm/RawQuery;->applyParams()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
