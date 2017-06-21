.class public final Lcom/vkcoffee/android/orm/Query;
.super Ljava/lang/Object;
.source "Query.java"


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
.field static final All:Ljava/lang/String; = "*"

.field static final And:Ljava/lang/String; = "AND"

.field static final Between:Ljava/lang/String; = "BETWEEN"

.field static final Delimiter:Ljava/lang/String; = ", "

.field static final From:Ljava/lang/String; = "FROM"

.field static final GroupBy:Ljava/lang/String; = "GROUP BY"

.field static final Having:Ljava/lang/String; = "HAVING"

.field static final In:Ljava/lang/String; = "IN"

.field static final IsEqualTo:Ljava/lang/String; = "="

.field static final IsGreaterThan:Ljava/lang/String; = ">"

.field static final IsGreaterThanOrEqualTo:Ljava/lang/String; = ">="

.field static final IsLessThan:Ljava/lang/String; = "<"

.field static final IsLessThanOrEqualTo:Ljava/lang/String; = "<="

.field static final IsNotEqualTo:Ljava/lang/String; = "!="

.field static final IsNotNull:Ljava/lang/String; = "IS NOT NULL"

.field static final IsNull:Ljava/lang/String; = "IS NULL"

.field static final Like:Ljava/lang/String; = "LIKE"

.field static final Limit:Ljava/lang/String; = "LIMIT"

.field static final NotBetween:Ljava/lang/String; = "NOT BETWEEN"

.field static final NotIn:Ljava/lang/String; = "NOT IN"

.field static final NotLike:Ljava/lang/String; = "NOT LIKE"

.field static final Offset:Ljava/lang/String; = "OFFSET"

.field static final Or:Ljava/lang/String; = "OR"

.field static final OrderBy:Ljava/lang/String; = "ORDER BY"

.field static final Select:Ljava/lang/String; = "SELECT"

.field static final SelectCount:Ljava/lang/String; = "SELECT COUNT(*)"

.field static final SelectDistinct:Ljava/lang/String; = "SELECT DISTINCT"

.field static final Set:Ljava/lang/String; = "SET"

.field static final Update:Ljava/lang/String; = "UPDATE"

.field static final Where:Ljava/lang/String; = "WHERE"


# instance fields
.field mDistinct:Z

.field final mEntityManager:Lcom/vkcoffee/android/orm/AbsEntityManager;

.field mFields:[Ljava/lang/String;

.field mGroupBy:[Ljava/lang/String;

.field mHaving:Ljava/lang/String;

.field mLimit:I

.field final mMetaData:Lcom/vkcoffee/android/orm/ClassMetaData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vkcoffee/android/orm/ClassMetaData",
            "<TT;>;"
        }
    .end annotation
.end field

.field mOffset:I

.field mOrderBy:Ljava/lang/String;

.field mOrderDirection:Lcom/vkcoffee/android/orm/Order;

.field mUseWhere:Z

.field mWhereArgs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/vkcoffee/android/orm/ClassMetaData;Lcom/vkcoffee/android/orm/AbsEntityManager;)V
    .locals 1
    .param p2, "em"    # Lcom/vkcoffee/android/orm/AbsEntityManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vkcoffee/android/orm/ClassMetaData",
            "<TT;>;",
            "Lcom/vkcoffee/android/orm/AbsEntityManager;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/vkcoffee/android/orm/Query;, "Lcom/vkcoffee/android/orm/Query<TT;>;"
    .local p1, "classMetaData":Lcom/vkcoffee/android/orm/ClassMetaData;, "Lcom/vkcoffee/android/orm/ClassMetaData<TT;>;"
    const/4 v0, -0x1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput v0, p0, Lcom/vkcoffee/android/orm/Query;->mLimit:I

    .line 58
    iput v0, p0, Lcom/vkcoffee/android/orm/Query;->mOffset:I

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkcoffee/android/orm/Query;->mDistinct:Z

    .line 63
    iput-object p1, p0, Lcom/vkcoffee/android/orm/Query;->mMetaData:Lcom/vkcoffee/android/orm/ClassMetaData;

    .line 64
    iput-object p2, p0, Lcom/vkcoffee/android/orm/Query;->mEntityManager:Lcom/vkcoffee/android/orm/AbsEntityManager;

    .line 65
    return-void
.end method

.method private addComparison(Ljava/lang/String;)Lcom/vkcoffee/android/orm/Query;
    .locals 1
    .param p1, "val"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/vkcoffee/android/orm/Query",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 336
    .local p0, "this":Lcom/vkcoffee/android/orm/Query;, "Lcom/vkcoffee/android/orm/Query<TT;>;"
    iget-object v0, p0, Lcom/vkcoffee/android/orm/Query;->mWhereArgs:Ljava/util/List;

    if-nez v0, :cond_0

    .line 337
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/orm/Query;->mWhereArgs:Ljava/util/List;

    .line 339
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/orm/Query;->mWhereArgs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 340
    return-object p0
.end method

.method private addComparison(Ljava/lang/String;Ljava/lang/Object;)Lcom/vkcoffee/android/orm/Query;
    .locals 2
    .param p1, "comparison"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/vkcoffee/android/orm/Query",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 344
    .local p0, "this":Lcom/vkcoffee/android/orm/Query;, "Lcom/vkcoffee/android/orm/Query<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Lcom/vkcoffee/android/orm/RawQuery;->escapeValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/orm/Query;->addComparison(Ljava/lang/String;)Lcom/vkcoffee/android/orm/Query;

    move-result-object v0

    return-object v0
.end method

.method private addComparison(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lcom/vkcoffee/android/orm/Query;
    .locals 3
    .param p1, "comparison"    # Ljava/lang/String;
    .param p2, "val1"    # Ljava/lang/Object;
    .param p3, "val2"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/vkcoffee/android/orm/Query",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/vkcoffee/android/orm/Query;, "Lcom/vkcoffee/android/orm/Query<TT;>;"
    const/16 v2, 0x20

    .line 348
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Lcom/vkcoffee/android/orm/RawQuery;->escapeValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "AND"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3}, Lcom/vkcoffee/android/orm/RawQuery;->escapeValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/orm/Query;->addComparison(Ljava/lang/String;)Lcom/vkcoffee/android/orm/Query;

    move-result-object v0

    return-object v0
.end method

.method private varargs addComparison(Ljava/lang/String;[Ljava/lang/Object;)Lcom/vkcoffee/android/orm/Query;
    .locals 9
    .param p1, "comparison"    # Ljava/lang/String;
    .param p2, "vals"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Lcom/vkcoffee/android/orm/Query",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/vkcoffee/android/orm/Query;, "Lcom/vkcoffee/android/orm/Query<TT;>;"
    const/4 v6, 0x0

    .line 352
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 353
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x1

    .line 355
    .local v2, "firstTime":Z
    if-eqz p2, :cond_9

    array-length v7, p2

    if-lez v7, :cond_9

    .line 356
    aget-object v1, p2, v6

    .line 357
    .local v1, "firstElem":Ljava/lang/Object;
    instance-of v7, v1, Ljava/lang/Iterable;

    if-eqz v7, :cond_1

    .line 358
    check-cast v1, Ljava/lang/Iterable;

    .end local v1    # "firstElem":Ljava/lang/Object;
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 359
    .local v4, "val":Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 360
    const/4 v2, 0x0

    .line 364
    :goto_1
    invoke-static {v4}, Lcom/vkcoffee/android/orm/RawQuery;->escapeValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 362
    :cond_0
    const-string/jumbo v7, ", "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 367
    .end local v4    # "val":Ljava/lang/Object;
    .restart local v1    # "firstElem":Ljava/lang/Object;
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 368
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v7, [I

    if-ne v7, v0, :cond_3

    .line 369
    check-cast v1, [I

    .end local v1    # "firstElem":Ljava/lang/Object;
    check-cast v1, [I

    array-length v7, v1

    :goto_2
    if-ge v6, v7, :cond_9

    aget v4, v1, v6

    .line 370
    .local v4, "val":I
    if-eqz v2, :cond_2

    .line 371
    const/4 v2, 0x0

    .line 375
    :goto_3
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v8}, Lcom/vkcoffee/android/orm/RawQuery;->escapeValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 373
    :cond_2
    const-string/jumbo v8, ", "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 377
    .end local v4    # "val":I
    .restart local v1    # "firstElem":Ljava/lang/Object;
    :cond_3
    const-class v7, [J

    if-ne v7, v0, :cond_5

    .line 378
    check-cast v1, [J

    .end local v1    # "firstElem":Ljava/lang/Object;
    check-cast v1, [J

    array-length v7, v1

    :goto_4
    if-ge v6, v7, :cond_9

    aget-wide v4, v1, v6

    .line 379
    .local v4, "val":J
    if-eqz v2, :cond_4

    .line 380
    const/4 v2, 0x0

    .line 384
    :goto_5
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {v8}, Lcom/vkcoffee/android/orm/RawQuery;->escapeValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 382
    :cond_4
    const-string/jumbo v8, ", "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 386
    .end local v4    # "val":J
    .restart local v1    # "firstElem":Ljava/lang/Object;
    :cond_5
    const-class v7, [Ljava/lang/Object;

    invoke-virtual {v7, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 387
    check-cast v1, [Ljava/lang/Object;

    .end local v1    # "firstElem":Ljava/lang/Object;
    check-cast v1, [Ljava/lang/Object;

    array-length v7, v1

    :goto_6
    if-ge v6, v7, :cond_9

    aget-object v4, v1, v6

    .line 388
    .local v4, "val":Ljava/lang/Object;
    if-eqz v2, :cond_6

    .line 389
    const/4 v2, 0x0

    .line 393
    :goto_7
    invoke-static {v4}, Lcom/vkcoffee/android/orm/RawQuery;->escapeValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 391
    :cond_6
    const-string/jumbo v8, ", "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 396
    .end local v4    # "val":Ljava/lang/Object;
    .restart local v1    # "firstElem":Ljava/lang/Object;
    :cond_7
    array-length v7, p2

    :goto_8
    if-ge v6, v7, :cond_9

    aget-object v4, p2, v6

    .line 397
    .restart local v4    # "val":Ljava/lang/Object;
    if-eqz v2, :cond_8

    .line 398
    const/4 v2, 0x0

    .line 402
    :goto_9
    invoke-static {v4}, Lcom/vkcoffee/android/orm/RawQuery;->escapeValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    .line 400
    :cond_8
    const-string/jumbo v8, ", "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 407
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "firstElem":Ljava/lang/Object;
    .end local v4    # "val":Ljava/lang/Object;
    :cond_9
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x20

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x28

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x29

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/vkcoffee/android/orm/Query;->addComparison(Ljava/lang/String;)Lcom/vkcoffee/android/orm/Query;

    move-result-object v6

    return-object v6
.end method


# virtual methods
.method public and(Ljava/lang/String;)Lcom/vkcoffee/android/orm/Query;
    .locals 2
    .param p1, "column"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/vkcoffee/android/orm/Query",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 155
    .local p0, "this":Lcom/vkcoffee/android/orm/Query;, "Lcom/vkcoffee/android/orm/Query<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/orm/Query;->addComparison(Ljava/lang/String;)Lcom/vkcoffee/android/orm/Query;

    move-result-object v0

    return-object v0
.end method

.method public and(Ljava/lang/reflect/Field;)Lcom/vkcoffee/android/orm/Query;
    .locals 1
    .param p1, "field"    # Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            ")",
            "Lcom/vkcoffee/android/orm/Query",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 159
    .local p0, "this":Lcom/vkcoffee/android/orm/Query;, "Lcom/vkcoffee/android/orm/Query<TT;>;"
    iget-object v0, p0, Lcom/vkcoffee/android/orm/Query;->mMetaData:Lcom/vkcoffee/android/orm/ClassMetaData;

    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/orm/ClassMetaData;->getColumnName(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/orm/Query;->and(Ljava/lang/String;)Lcom/vkcoffee/android/orm/Query;

    move-result-object v0

    return-object v0
.end method

.method public between(Ljava/lang/Object;Ljava/lang/Object;)Lcom/vkcoffee/android/orm/Query;
    .locals 1
    .param p1, "val1"    # Ljava/lang/Object;
    .param p2, "val2"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/vkcoffee/android/orm/Query",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 86
    .local p0, "this":Lcom/vkcoffee/android/orm/Query;, "Lcom/vkcoffee/android/orm/Query<TT;>;"
    const-string/jumbo v0, "BETWEEN"

    invoke-direct {p0, v0, p1, p2}, Lcom/vkcoffee/android/orm/Query;->addComparison(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lcom/vkcoffee/android/orm/Query;

    move-result-object v0

    return-object v0
.end method

.method compile()Ljava/lang/CharSequence;
    .locals 10

    .prologue
    .local p0, "this":Lcom/vkcoffee/android/orm/Query;, "Lcom/vkcoffee/android/orm/Query<TT;>;"
    const/16 v9, 0x20

    .line 411
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 412
    .local v4, "result":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 415
    .local v0, "appendSpace":Z
    iget-boolean v5, p0, Lcom/vkcoffee/android/orm/Query;->mUseWhere:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/vkcoffee/android/orm/Query;->mWhereArgs:Ljava/util/List;

    if-eqz v5, :cond_1

    .line 416
    const-string/jumbo v5, "WHERE"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    iget-object v5, p0, Lcom/vkcoffee/android/orm/Query;->mWhereArgs:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 418
    .local v3, "operator":Ljava/lang/String;
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 419
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 421
    .end local v3    # "operator":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x1

    .line 424
    :cond_1
    iget-object v5, p0, Lcom/vkcoffee/android/orm/Query;->mGroupBy:[Ljava/lang/String;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/vkcoffee/android/orm/Query;->mGroupBy:[Ljava/lang/String;

    array-length v5, v5

    if-lez v5, :cond_5

    .line 425
    if-eqz v0, :cond_2

    .line 426
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 428
    :cond_2
    const-string/jumbo v5, "GROUP BY"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 430
    const/4 v1, 0x1

    .line 431
    .local v1, "firstTime":Z
    iget-object v6, p0, Lcom/vkcoffee/android/orm/Query;->mGroupBy:[Ljava/lang/String;

    array-length v7, v6

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v7, :cond_4

    aget-object v2, v6, v5

    .line 432
    .local v2, "groupBy":Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 433
    const/4 v1, 0x0

    .line 437
    :goto_2
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 435
    :cond_3
    const-string/jumbo v8, ", "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 439
    .end local v2    # "groupBy":Ljava/lang/String;
    :cond_4
    const/4 v0, 0x1

    .line 442
    .end local v1    # "firstTime":Z
    :cond_5
    iget-object v5, p0, Lcom/vkcoffee/android/orm/Query;->mHaving:Ljava/lang/String;

    if-eqz v5, :cond_7

    .line 443
    if-eqz v0, :cond_6

    .line 444
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 446
    :cond_6
    const-string/jumbo v5, "HAVING"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 448
    iget-object v5, p0, Lcom/vkcoffee/android/orm/Query;->mHaving:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    const/4 v0, 0x1

    .line 452
    :cond_7
    iget-object v5, p0, Lcom/vkcoffee/android/orm/Query;->mOrderBy:Ljava/lang/String;

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/vkcoffee/android/orm/Query;->mOrderDirection:Lcom/vkcoffee/android/orm/Order;

    if-eqz v5, :cond_9

    .line 453
    if-eqz v0, :cond_8

    .line 454
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 456
    :cond_8
    const-string/jumbo v5, "ORDER BY"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 458
    iget-object v5, p0, Lcom/vkcoffee/android/orm/Query;->mOrderBy:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 460
    iget-object v5, p0, Lcom/vkcoffee/android/orm/Query;->mOrderDirection:Lcom/vkcoffee/android/orm/Order;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 461
    const/4 v0, 0x1

    .line 464
    :cond_9
    iget v5, p0, Lcom/vkcoffee/android/orm/Query;->mLimit:I

    if-ltz v5, :cond_b

    .line 465
    if-eqz v0, :cond_a

    .line 466
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 468
    :cond_a
    const-string/jumbo v5, "LIMIT"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 470
    iget v5, p0, Lcom/vkcoffee/android/orm/Query;->mLimit:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 471
    iget v5, p0, Lcom/vkcoffee/android/orm/Query;->mOffset:I

    if-ltz v5, :cond_b

    .line 472
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 473
    const-string/jumbo v5, "OFFSET"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 475
    iget v5, p0, Lcom/vkcoffee/android/orm/Query;->mOffset:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 478
    :cond_b
    return-object v4
.end method

.method public delete()I
    .locals 6

    .prologue
    .local p0, "this":Lcom/vkcoffee/android/orm/Query;, "Lcom/vkcoffee/android/orm/Query<TT;>;"
    const/4 v3, 0x0

    .line 233
    iget-object v4, p0, Lcom/vkcoffee/android/orm/Query;->mMetaData:Lcom/vkcoffee/android/orm/ClassMetaData;

    iget-object v4, v4, Lcom/vkcoffee/android/orm/ClassMetaData;->mViewData:Lcom/vkcoffee/android/orm/View$MetaData;

    if-eqz v4, :cond_0

    .line 234
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Query.delete() is not supported for views. Please use for entities only."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 236
    :cond_0
    iget-object v4, p0, Lcom/vkcoffee/android/orm/Query;->mEntityManager:Lcom/vkcoffee/android/orm/AbsEntityManager;

    invoke-interface {v4}, Lcom/vkcoffee/android/orm/AbsEntityManager;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 237
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {p0}, Lcom/vkcoffee/android/orm/Query;->compile()Ljava/lang/CharSequence;

    move-result-object v2

    .line 239
    .local v2, "sql":Ljava/lang/CharSequence;
    :try_start_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 240
    iget-object v4, p0, Lcom/vkcoffee/android/orm/Query;->mMetaData:Lcom/vkcoffee/android/orm/ClassMetaData;

    invoke-virtual {v4}, Lcom/vkcoffee/android/orm/ClassMetaData;->getRecordName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    :goto_0
    const/4 v5, 0x0

    invoke-virtual {v1, v4, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 241
    .local v0, "count":I
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return v0

    .line 240
    .end local v0    # "count":I
    :cond_1
    :try_start_1
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    goto :goto_0

    .line 244
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3
.end method

.method public distinct()Lcom/vkcoffee/android/orm/Query;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/vkcoffee/android/orm/Query",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 68
    .local p0, "this":Lcom/vkcoffee/android/orm/Query;, "Lcom/vkcoffee/android/orm/Query<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkcoffee/android/orm/Query;->mDistinct:Z

    .line 69
    return-object p0
.end method

.method public varargs fields([Ljava/lang/String;)Lcom/vkcoffee/android/orm/Query;
    .locals 0
    .param p1, "fields"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Lcom/vkcoffee/android/orm/Query",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 73
    .local p0, "this":Lcom/vkcoffee/android/orm/Query;, "Lcom/vkcoffee/android/orm/Query<TT;>;"
    iput-object p1, p0, Lcom/vkcoffee/android/orm/Query;->mFields:[Ljava/lang/String;

    .line 74
    return-object p0
.end method

.method public varargs fields([Ljava/lang/reflect/Field;)Lcom/vkcoffee/android/orm/Query;
    .locals 4
    .param p1, "fields"    # [Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/reflect/Field;",
            ")",
            "Lcom/vkcoffee/android/orm/Query",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 78
    .local p0, "this":Lcom/vkcoffee/android/orm/Query;, "Lcom/vkcoffee/android/orm/Query<TT;>;"
    array-length v1, p1

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/vkcoffee/android/orm/Query;->mFields:[Ljava/lang/String;

    .line 79
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 80
    iget-object v1, p0, Lcom/vkcoffee/android/orm/Query;->mFields:[Ljava/lang/String;

    iget-object v2, p0, Lcom/vkcoffee/android/orm/Query;->mMetaData:Lcom/vkcoffee/android/orm/ClassMetaData;

    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/orm/ClassMetaData;->getColumnName(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 79
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 82
    :cond_0
    return-object p0
.end method

.method public varargs groupBy([Ljava/lang/String;)Lcom/vkcoffee/android/orm/Query;
    .locals 0
    .param p1, "fields"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Lcom/vkcoffee/android/orm/Query",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 171
    .local p0, "this":Lcom/vkcoffee/android/orm/Query;, "Lcom/vkcoffee/android/orm/Query<TT;>;"
    iput-object p1, p0, Lcom/vkcoffee/android/orm/Query;->mGroupBy:[Ljava/lang/String;

    .line 172
    return-object p0
.end method

.method public varargs groupBy([Ljava/lang/reflect/Field;)Lcom/vkcoffee/android/orm/Query;
    .locals 4
    .param p1, "fields"    # [Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/reflect/Field;",
            ")",
            "Lcom/vkcoffee/android/orm/Query",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 176
    .local p0, "this":Lcom/vkcoffee/android/orm/Query;, "Lcom/vkcoffee/android/orm/Query<TT;>;"
    array-length v2, p1

    new-array v0, v2, [Ljava/lang/String;

    .line 177
    .local v0, "array":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 178
    iget-object v2, p0, Lcom/vkcoffee/android/orm/Query;->mMetaData:Lcom/vkcoffee/android/orm/ClassMetaData;

    aget-object v3, p1, v1

    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/orm/ClassMetaData;->getColumnName(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 177
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 180
    :cond_0
    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/orm/Query;->groupBy([Ljava/lang/String;)Lcom/vkcoffee/android/orm/Query;

    move-result-object v2

    return-object v2
.end method

.method public having(Ljava/lang/String;)Lcom/vkcoffee/android/orm/Query;
    .locals 0
    .param p1, "having"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/vkcoffee/android/orm/Query",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 184
    .local p0, "this":Lcom/vkcoffee/android/orm/Query;, "Lcom/vkcoffee/android/orm/Query<TT;>;"
    iput-object p1, p0, Lcom/vkcoffee/android/orm/Query;->mHaving:Ljava/lang/String;

    .line 185
    return-object p0
.end method

.method public varargs in([Ljava/lang/Object;)Lcom/vkcoffee/android/orm/Query;
    .locals 1
    .param p1, "vals"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")",
            "Lcom/vkcoffee/android/orm/Query",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 90
    .local p0, "this":Lcom/vkcoffee/android/orm/Query;, "Lcom/vkcoffee/android/orm/Query<TT;>;"
    const-string/jumbo v0, "IN"

    invoke-direct {p0, v0, p1}, Lcom/vkcoffee/android/orm/Query;->addComparison(Ljava/lang/String;[Ljava/lang/Object;)Lcom/vkcoffee/android/orm/Query;

    move-result-object v0

    return-object v0
.end method

.method public isEqualTo(Ljava/lang/Object;)Lcom/vkcoffee/android/orm/Query;
    .locals 1
    .param p1, "val"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/vkcoffee/android/orm/Query",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 94
    .local p0, "this":Lcom/vkcoffee/android/orm/Query;, "Lcom/vkcoffee/android/orm/Query<TT;>;"
    const-string/jumbo v0, "="

    invoke-direct {p0, v0, p1}, Lcom/vkcoffee/android/orm/Query;->addComparison(Ljava/lang/String;Ljava/lang/Object;)Lcom/vkcoffee/android/orm/Query;

    move-result-object v0

    return-object v0
.end method

.method public isGreaterThan(Ljava/lang/Object;)Lcom/vkcoffee/android/orm/Query;
    .locals 1
    .param p1, "val"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/vkcoffee/android/orm/Query",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 106
    .local p0, "this":Lcom/vkcoffee/android/orm/Query;, "Lcom/vkcoffee/android/orm/Query<TT;>;"
    const-string/jumbo v0, ">"

    invoke-direct {p0, v0, p1}, Lcom/vkcoffee/android/orm/Query;->addComparison(Ljava/lang/String;Ljava/lang/Object;)Lcom/vkcoffee/android/orm/Query;

    move-result-object v0

    return-object v0
.end method

.method public isGreaterThanOrEqualTo(Ljava/lang/Object;)Lcom/vkcoffee/android/orm/Query;
    .locals 1
    .param p1, "val"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/vkcoffee/android/orm/Query",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 110
    .local p0, "this":Lcom/vkcoffee/android/orm/Query;, "Lcom/vkcoffee/android/orm/Query<TT;>;"
    const-string/jumbo v0, ">="

    invoke-direct {p0, v0, p1}, Lcom/vkcoffee/android/orm/Query;->addComparison(Ljava/lang/String;Ljava/lang/Object;)Lcom/vkcoffee/android/orm/Query;

    move-result-object v0

    return-object v0
.end method

.method public isLessThan(Ljava/lang/Object;)Lcom/vkcoffee/android/orm/Query;
    .locals 1
    .param p1, "val"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/vkcoffee/android/orm/Query",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 114
    .local p0, "this":Lcom/vkcoffee/android/orm/Query;, "Lcom/vkcoffee/android/orm/Query<TT;>;"
    const-string/jumbo v0, "<"

    invoke-direct {p0, v0, p1}, Lcom/vkcoffee/android/orm/Query;->addComparison(Ljava/lang/String;Ljava/lang/Object;)Lcom/vkcoffee/android/orm/Query;

    move-result-object v0

    return-object v0
.end method

.method public isLessThanOrEqualTo(Ljava/lang/Object;)Lcom/vkcoffee/android/orm/Query;
    .locals 1
    .param p1, "val"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/vkcoffee/android/orm/Query",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 118
    .local p0, "this":Lcom/vkcoffee/android/orm/Query;, "Lcom/vkcoffee/android/orm/Query<TT;>;"
    const-string/jumbo v0, "<="

    invoke-direct {p0, v0, p1}, Lcom/vkcoffee/android/orm/Query;->addComparison(Ljava/lang/String;Ljava/lang/Object;)Lcom/vkcoffee/android/orm/Query;

    move-result-object v0

    return-object v0
.end method

.method public isNotEqualTo(Ljava/lang/Object;)Lcom/vkcoffee/android/orm/Query;
    .locals 1
    .param p1, "val"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/vkcoffee/android/orm/Query",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 122
    .local p0, "this":Lcom/vkcoffee/android/orm/Query;, "Lcom/vkcoffee/android/orm/Query<TT;>;"
    const-string/jumbo v0, "!="

    invoke-direct {p0, v0, p1}, Lcom/vkcoffee/android/orm/Query;->addComparison(Ljava/lang/String;Ljava/lang/Object;)Lcom/vkcoffee/android/orm/Query;

    move-result-object v0

    return-object v0
.end method

.method public isNotNull()Lcom/vkcoffee/android/orm/Query;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/vkcoffee/android/orm/Query",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 102
    .local p0, "this":Lcom/vkcoffee/android/orm/Query;, "Lcom/vkcoffee/android/orm/Query<TT;>;"
    const-string/jumbo v0, "IS NOT NULL"

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/orm/Query;->addComparison(Ljava/lang/String;)Lcom/vkcoffee/android/orm/Query;

    move-result-object v0

    return-object v0
.end method

.method public isNull()Lcom/vkcoffee/android/orm/Query;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/vkcoffee/android/orm/Query",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 98
    .local p0, "this":Lcom/vkcoffee/android/orm/Query;, "Lcom/vkcoffee/android/orm/Query<TT;>;"
    const-string/jumbo v0, "IS NULL"

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/orm/Query;->addComparison(Ljava/lang/String;)Lcom/vkcoffee/android/orm/Query;

    move-result-object v0

    return-object v0
.end method

.method public like(Ljava/lang/Object;)Lcom/vkcoffee/android/orm/Query;
    .locals 2
    .param p1, "val"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/vkcoffee/android/orm/Query",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 126
    .local p0, "this":Lcom/vkcoffee/android/orm/Query;, "Lcom/vkcoffee/android/orm/Query<TT;>;"
    const-string/jumbo v0, "LIKE"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/vkcoffee/android/orm/Query;->addComparison(Ljava/lang/String;Ljava/lang/Object;)Lcom/vkcoffee/android/orm/Query;

    move-result-object v0

    return-object v0
.end method

.method public limit(I)Lcom/vkcoffee/android/orm/Query;
    .locals 0
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/vkcoffee/android/orm/Query",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 199
    .local p0, "this":Lcom/vkcoffee/android/orm/Query;, "Lcom/vkcoffee/android/orm/Query<TT;>;"
    iput p1, p0, Lcom/vkcoffee/android/orm/Query;->mLimit:I

    .line 200
    return-object p0
.end method

.method public limit(II)Lcom/vkcoffee/android/orm/Query;
    .locals 0
    .param p1, "count"    # I
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/vkcoffee/android/orm/Query",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 204
    .local p0, "this":Lcom/vkcoffee/android/orm/Query;, "Lcom/vkcoffee/android/orm/Query<TT;>;"
    iput p1, p0, Lcom/vkcoffee/android/orm/Query;->mLimit:I

    .line 205
    iput p2, p0, Lcom/vkcoffee/android/orm/Query;->mOffset:I

    .line 206
    return-object p0
.end method

.method public load()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 210
    .local p0, "this":Lcom/vkcoffee/android/orm/Query;, "Lcom/vkcoffee/android/orm/Query<TT;>;"
    iget-object v0, p0, Lcom/vkcoffee/android/orm/Query;->mEntityManager:Lcom/vkcoffee/android/orm/AbsEntityManager;

    iget-object v1, p0, Lcom/vkcoffee/android/orm/Query;->mMetaData:Lcom/vkcoffee/android/orm/ClassMetaData;

    iget-object v1, v1, Lcom/vkcoffee/android/orm/ClassMetaData;->mTargetClass:Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/vkcoffee/android/orm/Query;->selectQuery()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/vkcoffee/android/orm/AbsEntityManager;->executeRawQuery(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public loadCount()J
    .locals 4

    .prologue
    .line 218
    .local p0, "this":Lcom/vkcoffee/android/orm/Query;, "Lcom/vkcoffee/android/orm/Query<TT;>;"
    iget-object v1, p0, Lcom/vkcoffee/android/orm/Query;->mEntityManager:Lcom/vkcoffee/android/orm/AbsEntityManager;

    invoke-interface {v1}, Lcom/vkcoffee/android/orm/AbsEntityManager;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SELECT COUNT(*) FROM `"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vkcoffee/android/orm/Query;->mMetaData:Lcom/vkcoffee/android/orm/ClassMetaData;

    invoke-virtual {v3}, Lcom/vkcoffee/android/orm/ClassMetaData;->getRecordName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x60

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/vkcoffee/android/orm/Query;->compile()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 220
    .local v0, "sql":Landroid/database/sqlite/SQLiteStatement;
    :try_start_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 222
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    return-wide v2

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    throw v1
.end method

.method public loadCursor()Landroid/database/Cursor;
    .locals 3

    .prologue
    .line 214
    .local p0, "this":Lcom/vkcoffee/android/orm/Query;, "Lcom/vkcoffee/android/orm/Query<TT;>;"
    iget-object v0, p0, Lcom/vkcoffee/android/orm/Query;->mEntityManager:Lcom/vkcoffee/android/orm/AbsEntityManager;

    invoke-virtual {p0}, Lcom/vkcoffee/android/orm/Query;->selectQuery()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/vkcoffee/android/orm/AbsEntityManager;->cursorQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public loadSingle()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 227
    .local p0, "this":Lcom/vkcoffee/android/orm/Query;, "Lcom/vkcoffee/android/orm/Query<TT;>;"
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/orm/Query;->limit(I)Lcom/vkcoffee/android/orm/Query;

    .line 228
    invoke-virtual {p0}, Lcom/vkcoffee/android/orm/Query;->load()Ljava/util/List;

    move-result-object v0

    .line 229
    .local v0, "entities":Ljava/util/List;, "Ljava/util/List<TT;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public notBetween(Ljava/lang/Object;Ljava/lang/Object;)Lcom/vkcoffee/android/orm/Query;
    .locals 1
    .param p1, "val1"    # Ljava/lang/Object;
    .param p2, "val2"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/vkcoffee/android/orm/Query",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 130
    .local p0, "this":Lcom/vkcoffee/android/orm/Query;, "Lcom/vkcoffee/android/orm/Query<TT;>;"
    const-string/jumbo v0, "NOT BETWEEN"

    invoke-direct {p0, v0, p1, p2}, Lcom/vkcoffee/android/orm/Query;->addComparison(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lcom/vkcoffee/android/orm/Query;

    move-result-object v0

    return-object v0
.end method

.method public notIn(Ljava/util/List;)Lcom/vkcoffee/android/orm/Query;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/vkcoffee/android/orm/Query",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 138
    .local p0, "this":Lcom/vkcoffee/android/orm/Query;, "Lcom/vkcoffee/android/orm/Query<TT;>;"
    .local p1, "vals":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const-string/jumbo v0, "NOT IN"

    invoke-interface {p1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/vkcoffee/android/orm/Query;->addComparison(Ljava/lang/String;[Ljava/lang/Object;)Lcom/vkcoffee/android/orm/Query;

    move-result-object v0

    return-object v0
.end method

.method public varargs notIn([Ljava/lang/Object;)Lcom/vkcoffee/android/orm/Query;
    .locals 1
    .param p1, "vals"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")",
            "Lcom/vkcoffee/android/orm/Query",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 134
    .local p0, "this":Lcom/vkcoffee/android/orm/Query;, "Lcom/vkcoffee/android/orm/Query<TT;>;"
    const-string/jumbo v0, "NOT IN"

    invoke-direct {p0, v0, p1}, Lcom/vkcoffee/android/orm/Query;->addComparison(Ljava/lang/String;[Ljava/lang/Object;)Lcom/vkcoffee/android/orm/Query;

    move-result-object v0

    return-object v0
.end method

.method public notLike(Ljava/lang/Object;)Lcom/vkcoffee/android/orm/Query;
    .locals 1
    .param p1, "val"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/vkcoffee/android/orm/Query",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 142
    .local p0, "this":Lcom/vkcoffee/android/orm/Query;, "Lcom/vkcoffee/android/orm/Query<TT;>;"
    const-string/jumbo v0, "NOT LIKE"

    invoke-direct {p0, v0, p1}, Lcom/vkcoffee/android/orm/Query;->addComparison(Ljava/lang/String;Ljava/lang/Object;)Lcom/vkcoffee/android/orm/Query;

    move-result-object v0

    return-object v0
.end method

.method public or(Ljava/lang/String;)Lcom/vkcoffee/android/orm/Query;
    .locals 2
    .param p1, "column"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/vkcoffee/android/orm/Query",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 163
    .local p0, "this":Lcom/vkcoffee/android/orm/Query;, "Lcom/vkcoffee/android/orm/Query<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "OR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/orm/Query;->addComparison(Ljava/lang/String;)Lcom/vkcoffee/android/orm/Query;

    move-result-object v0

    return-object v0
.end method

.method public or(Ljava/lang/reflect/Field;)Lcom/vkcoffee/android/orm/Query;
    .locals 1
    .param p1, "field"    # Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            ")",
            "Lcom/vkcoffee/android/orm/Query",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 167
    .local p0, "this":Lcom/vkcoffee/android/orm/Query;, "Lcom/vkcoffee/android/orm/Query<TT;>;"
    iget-object v0, p0, Lcom/vkcoffee/android/orm/Query;->mMetaData:Lcom/vkcoffee/android/orm/ClassMetaData;

    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/orm/ClassMetaData;->getColumnName(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/orm/Query;->or(Ljava/lang/String;)Lcom/vkcoffee/android/orm/Query;

    move-result-object v0

    return-object v0
.end method

.method public orderBy(Ljava/lang/String;Lcom/vkcoffee/android/orm/Order;)Lcom/vkcoffee/android/orm/Query;
    .locals 0
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "direction"    # Lcom/vkcoffee/android/orm/Order;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/vkcoffee/android/orm/Order;",
            ")",
            "Lcom/vkcoffee/android/orm/Query",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 189
    .local p0, "this":Lcom/vkcoffee/android/orm/Query;, "Lcom/vkcoffee/android/orm/Query<TT;>;"
    iput-object p1, p0, Lcom/vkcoffee/android/orm/Query;->mOrderBy:Ljava/lang/String;

    .line 190
    iput-object p2, p0, Lcom/vkcoffee/android/orm/Query;->mOrderDirection:Lcom/vkcoffee/android/orm/Order;

    .line 191
    return-object p0
.end method

.method public orderBy(Ljava/lang/reflect/Field;Lcom/vkcoffee/android/orm/Order;)Lcom/vkcoffee/android/orm/Query;
    .locals 1
    .param p1, "field"    # Ljava/lang/reflect/Field;
    .param p2, "direction"    # Lcom/vkcoffee/android/orm/Order;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            "Lcom/vkcoffee/android/orm/Order;",
            ")",
            "Lcom/vkcoffee/android/orm/Query",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 195
    .local p0, "this":Lcom/vkcoffee/android/orm/Query;, "Lcom/vkcoffee/android/orm/Query<TT;>;"
    iget-object v0, p0, Lcom/vkcoffee/android/orm/Query;->mMetaData:Lcom/vkcoffee/android/orm/ClassMetaData;

    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/orm/ClassMetaData;->getColumnName(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/vkcoffee/android/orm/Query;->orderBy(Ljava/lang/String;Lcom/vkcoffee/android/orm/Order;)Lcom/vkcoffee/android/orm/Query;

    move-result-object v0

    return-object v0
.end method

.method public varargs rawUpdate([Ljava/lang/Object;)V
    .locals 8
    .param p1, "filedNamesAndValues"    # [Ljava/lang/Object;

    .prologue
    .local p0, "this":Lcom/vkcoffee/android/orm/Query;, "Lcom/vkcoffee/android/orm/Query<TT;>;"
    const/16 v7, 0x60

    const/16 v6, 0x20

    .line 293
    iget-object v5, p0, Lcom/vkcoffee/android/orm/Query;->mMetaData:Lcom/vkcoffee/android/orm/ClassMetaData;

    iget-object v5, v5, Lcom/vkcoffee/android/orm/ClassMetaData;->mViewData:Lcom/vkcoffee/android/orm/View$MetaData;

    if-eqz v5, :cond_0

    .line 294
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "Query.update() is not supported for views. Please use for entities only."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 296
    :cond_0
    iget-object v5, p0, Lcom/vkcoffee/android/orm/Query;->mEntityManager:Lcom/vkcoffee/android/orm/AbsEntityManager;

    invoke-interface {v5}, Lcom/vkcoffee/android/orm/AbsEntityManager;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 298
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "UPDATE"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 299
    .local v3, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 300
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 301
    iget-object v5, p0, Lcom/vkcoffee/android/orm/Query;->mMetaData:Lcom/vkcoffee/android/orm/ClassMetaData;

    invoke-virtual {v5}, Lcom/vkcoffee/android/orm/ClassMetaData;->getRecordName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 303
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 304
    const-string/jumbo v5, "SET"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    const/4 v1, 0x1

    .line 308
    .local v1, "firstTime":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, p1

    if-ge v2, v5, :cond_2

    .line 309
    if-eqz v1, :cond_1

    .line 310
    const/4 v1, 0x0

    .line 314
    :goto_1
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 315
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 316
    aget-object v5, p1, v2

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 317
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 318
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 319
    const-string/jumbo v5, "="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 321
    add-int/lit8 v5, v2, 0x1

    aget-object v5, p1, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 308
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 312
    :cond_1
    const-string/jumbo v5, ", "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 325
    :cond_2
    invoke-virtual {p0}, Lcom/vkcoffee/android/orm/Query;->compile()Ljava/lang/CharSequence;

    move-result-object v4

    .line 326
    .local v4, "where":Ljava/lang/CharSequence;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 327
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 328
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 330
    :cond_3
    iget-object v5, p0, Lcom/vkcoffee/android/orm/Query;->mEntityManager:Lcom/vkcoffee/android/orm/AbsEntityManager;

    invoke-interface {v5}, Lcom/vkcoffee/android/orm/AbsEntityManager;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 333
    return-void
.end method

.method selectQuery()Ljava/lang/String;
    .locals 5

    .prologue
    .local p0, "this":Lcom/vkcoffee/android/orm/Query;, "Lcom/vkcoffee/android/orm/Query<TT;>;"
    const/16 v4, 0x20

    .line 482
    invoke-virtual {p0}, Lcom/vkcoffee/android/orm/Query;->compile()Ljava/lang/CharSequence;

    move-result-object v0

    .line 483
    .local v0, "compiledSource":Ljava/lang/CharSequence;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v1, p0, Lcom/vkcoffee/android/orm/Query;->mDistinct:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "SELECT DISTINCT"

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/vkcoffee/android/orm/Query;->mFields:[Ljava/lang/String;

    if-nez v1, :cond_1

    const-string/jumbo v1, "*"

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "FROM"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 484
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/vkcoffee/android/orm/Query;->mMetaData:Lcom/vkcoffee/android/orm/ClassMetaData;

    invoke-virtual {v1}, Lcom/vkcoffee/android/orm/ClassMetaData;->getRecordName()Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 483
    :cond_0
    const-string/jumbo v1, "SELECT"

    goto :goto_0

    :cond_1
    const-string/jumbo v1, ", "

    iget-object v3, p0, Lcom/vkcoffee/android/orm/Query;->mFields:[Ljava/lang/String;

    invoke-static {v1, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 484
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/vkcoffee/android/orm/Query;->mMetaData:Lcom/vkcoffee/android/orm/ClassMetaData;

    invoke-virtual {v3}, Lcom/vkcoffee/android/orm/ClassMetaData;->getRecordName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2
.end method

.method public varargs update([Ljava/lang/Object;)V
    .locals 8
    .param p1, "filedNamesAndValues"    # [Ljava/lang/Object;

    .prologue
    .local p0, "this":Lcom/vkcoffee/android/orm/Query;, "Lcom/vkcoffee/android/orm/Query<TT;>;"
    const/16 v7, 0x60

    const/16 v6, 0x20

    .line 250
    iget-object v5, p0, Lcom/vkcoffee/android/orm/Query;->mMetaData:Lcom/vkcoffee/android/orm/ClassMetaData;

    iget-object v5, v5, Lcom/vkcoffee/android/orm/ClassMetaData;->mViewData:Lcom/vkcoffee/android/orm/View$MetaData;

    if-eqz v5, :cond_0

    .line 251
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "Query.update() is not supported for views. Please use for entities only."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 253
    :cond_0
    iget-object v5, p0, Lcom/vkcoffee/android/orm/Query;->mEntityManager:Lcom/vkcoffee/android/orm/AbsEntityManager;

    invoke-interface {v5}, Lcom/vkcoffee/android/orm/AbsEntityManager;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 255
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "UPDATE"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 256
    .local v3, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 257
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 258
    iget-object v5, p0, Lcom/vkcoffee/android/orm/Query;->mMetaData:Lcom/vkcoffee/android/orm/ClassMetaData;

    invoke-virtual {v5}, Lcom/vkcoffee/android/orm/ClassMetaData;->getRecordName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 260
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 261
    const-string/jumbo v5, "SET"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    const/4 v1, 0x1

    .line 265
    .local v1, "firstTime":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, p1

    if-ge v2, v5, :cond_2

    .line 266
    if-eqz v1, :cond_1

    .line 267
    const/4 v1, 0x0

    .line 271
    :goto_1
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 272
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 273
    aget-object v5, p1, v2

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 274
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 275
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 276
    const-string/jumbo v5, "="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 278
    add-int/lit8 v5, v2, 0x1

    aget-object v5, p1, v5

    invoke-static {v5}, Lcom/vkcoffee/android/orm/RawQuery;->escapeValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 269
    :cond_1
    const-string/jumbo v5, ", "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 282
    :cond_2
    invoke-virtual {p0}, Lcom/vkcoffee/android/orm/Query;->compile()Ljava/lang/CharSequence;

    move-result-object v4

    .line 283
    .local v4, "where":Ljava/lang/CharSequence;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 284
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 285
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 287
    :cond_3
    iget-object v5, p0, Lcom/vkcoffee/android/orm/Query;->mEntityManager:Lcom/vkcoffee/android/orm/AbsEntityManager;

    invoke-interface {v5}, Lcom/vkcoffee/android/orm/AbsEntityManager;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 290
    return-void
.end method

.method public where(Ljava/lang/String;)Lcom/vkcoffee/android/orm/Query;
    .locals 1
    .param p1, "column"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/vkcoffee/android/orm/Query",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 146
    .local p0, "this":Lcom/vkcoffee/android/orm/Query;, "Lcom/vkcoffee/android/orm/Query<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkcoffee/android/orm/Query;->mUseWhere:Z

    .line 147
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/orm/Query;->addComparison(Ljava/lang/String;)Lcom/vkcoffee/android/orm/Query;

    move-result-object v0

    return-object v0
.end method

.method public where(Ljava/lang/reflect/Field;)Lcom/vkcoffee/android/orm/Query;
    .locals 1
    .param p1, "field"    # Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            ")",
            "Lcom/vkcoffee/android/orm/Query",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 151
    .local p0, "this":Lcom/vkcoffee/android/orm/Query;, "Lcom/vkcoffee/android/orm/Query<TT;>;"
    iget-object v0, p0, Lcom/vkcoffee/android/orm/Query;->mMetaData:Lcom/vkcoffee/android/orm/ClassMetaData;

    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/orm/ClassMetaData;->getColumnName(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/orm/Query;->where(Ljava/lang/String;)Lcom/vkcoffee/android/orm/Query;

    move-result-object v0

    return-object v0
.end method
