.class final Lcom/vkcoffee/android/orm/ClassMetaData;
.super Ljava/lang/Object;
.source "ClassMetaData.java"


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
.field static final CREATE_TABLE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS "

.field static final CREATE_VIEW:Ljava/lang/String; = "CREATE VIEW IF NOT EXISTS "

.field static final CREATE_VIEW_AS:Ljava/lang/String; = " AS "

.field static final INDEX_CREATE:Ljava/lang/String; = "CREATE"

.field static final INDEX_FULLTEXT:Ljava/lang/String; = " FULLTEXT"

.field static final INDEX_IF_NOT_EXISTS:Ljava/lang/String; = " INDEX IF NOT EXISTS "

.field static final INDEX_ON:Ljava/lang/String; = " ON "

.field static final INDEX_UNIQUE:Ljava/lang/String; = " UNIQUE"


# instance fields
.field mColumnMetaData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/Field;",
            "Lcom/vkcoffee/android/orm/Column$MetaData;",
            ">;"
        }
    .end annotation
.end field

.field private final mCustom:Z

.field mEntityData:Lcom/vkcoffee/android/orm/Entity$MetaData;

.field mIndexMetaData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/Field;",
            "Lcom/vkcoffee/android/orm/Index$MetaData;",
            ">;"
        }
    .end annotation
.end field

.field mMigrationData:Lcom/vkcoffee/android/orm/Version$MetaData;

.field private mPrimaryKey:Ljava/lang/reflect/Field;

.field private mPrimaryKeyColumn:Ljava/lang/String;

.field final mTargetClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field mViewData:Lcom/vkcoffee/android/orm/View$MetaData;


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/vkcoffee/android/orm/IllegalClassException;
        }
    .end annotation

    .prologue
    .line 49
    .local p0, "this":Lcom/vkcoffee/android/orm/ClassMetaData;, "Lcom/vkcoffee/android/orm/ClassMetaData<TT;>;"
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/vkcoffee/android/orm/ClassMetaData;->mTargetClass:Ljava/lang/Class;

    .line 51
    const/4 v1, 0x0

    .line 52
    .local v1, "inheritance":Z
    const/4 v2, 0x0

    .line 53
    .local v2, "isViewOrEntity":Z
    const-class v5, Lcom/vkcoffee/android/orm/CustomRecord;

    invoke-virtual {v5, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/vkcoffee/android/orm/ClassMetaData;->mCustom:Z

    .line 55
    const-class v5, Lcom/vkcoffee/android/orm/Entity;

    invoke-virtual {p1, v5}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 56
    .local v0, "entity":Ljava/lang/annotation/Annotation;
    if-eqz v0, :cond_2

    .line 57
    new-instance v5, Lcom/vkcoffee/android/orm/Entity$MetaData;

    check-cast v0, Lcom/vkcoffee/android/orm/Entity;

    .end local v0    # "entity":Ljava/lang/annotation/Annotation;
    invoke-direct {v5, v0}, Lcom/vkcoffee/android/orm/Entity$MetaData;-><init>(Lcom/vkcoffee/android/orm/Entity;)V

    iput-object v5, p0, Lcom/vkcoffee/android/orm/ClassMetaData;->mEntityData:Lcom/vkcoffee/android/orm/Entity$MetaData;

    .line 58
    const/4 v2, 0x1

    .line 59
    iget-object v5, p0, Lcom/vkcoffee/android/orm/ClassMetaData;->mEntityData:Lcom/vkcoffee/android/orm/Entity$MetaData;

    iget-boolean v1, v5, Lcom/vkcoffee/android/orm/Entity$MetaData;->inheritance:Z

    .line 69
    :cond_0
    :goto_0
    if-eqz v2, :cond_3

    .line 70
    iget-object v5, p0, Lcom/vkcoffee/android/orm/ClassMetaData;->mTargetClass:Ljava/lang/Class;

    const-class v6, Lcom/vkcoffee/android/orm/Version;

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    .line 71
    .local v3, "migration":Ljava/lang/annotation/Annotation;
    if-eqz v3, :cond_1

    .line 72
    new-instance v5, Lcom/vkcoffee/android/orm/Version$MetaData;

    check-cast v3, Lcom/vkcoffee/android/orm/Version;

    .end local v3    # "migration":Ljava/lang/annotation/Annotation;
    invoke-direct {v5, v3}, Lcom/vkcoffee/android/orm/Version$MetaData;-><init>(Lcom/vkcoffee/android/orm/Version;)V

    iput-object v5, p0, Lcom/vkcoffee/android/orm/ClassMetaData;->mMigrationData:Lcom/vkcoffee/android/orm/Version$MetaData;

    .line 74
    :cond_1
    iget-object v5, p0, Lcom/vkcoffee/android/orm/ClassMetaData;->mTargetClass:Ljava/lang/Class;

    invoke-direct {p0, v5, v1}, Lcom/vkcoffee/android/orm/ClassMetaData;->loadFieldsMetaData(Ljava/lang/Class;Z)V

    .line 78
    return-void

    .line 61
    .restart local v0    # "entity":Ljava/lang/annotation/Annotation;
    :cond_2
    const-class v5, Lcom/vkcoffee/android/orm/View;

    invoke-virtual {p1, v5}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    .line 62
    .local v4, "view":Ljava/lang/annotation/Annotation;
    if-eqz v4, :cond_0

    .line 63
    new-instance v5, Lcom/vkcoffee/android/orm/View$MetaData;

    check-cast v4, Lcom/vkcoffee/android/orm/View;

    .end local v4    # "view":Ljava/lang/annotation/Annotation;
    invoke-direct {v5, v4}, Lcom/vkcoffee/android/orm/View$MetaData;-><init>(Lcom/vkcoffee/android/orm/View;)V

    iput-object v5, p0, Lcom/vkcoffee/android/orm/ClassMetaData;->mViewData:Lcom/vkcoffee/android/orm/View$MetaData;

    .line 64
    const/4 v2, 0x1

    .line 65
    iget-object v5, p0, Lcom/vkcoffee/android/orm/ClassMetaData;->mViewData:Lcom/vkcoffee/android/orm/View$MetaData;

    iget-boolean v1, v5, Lcom/vkcoffee/android/orm/View$MetaData;->inheritance:Z

    goto :goto_0

    .line 76
    .end local v0    # "entity":Ljava/lang/annotation/Annotation;
    :cond_3
    new-instance v5, Lcom/vkcoffee/android/orm/IllegalClassException;

    invoke-direct {v5, p1}, Lcom/vkcoffee/android/orm/IllegalClassException;-><init>(Ljava/lang/Class;)V

    throw v5
.end method

.method private createTable(Landroid/database/sqlite/SQLiteDatabase;)I
    .locals 4
    .param p1, "database"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 120
    .local p0, "this":Lcom/vkcoffee/android/orm/ClassMetaData;, "Lcom/vkcoffee/android/orm/ClassMetaData<TT;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "CREATE TABLE IF NOT EXISTS "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vkcoffee/android/orm/ClassMetaData;->mEntityData:Lcom/vkcoffee/android/orm/Entity$MetaData;

    iget-object v3, v3, Lcom/vkcoffee/android/orm/Entity$MetaData;->tableName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/vkcoffee/android/orm/ClassMetaData;->describeColumns()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 122
    iget-object v2, p0, Lcom/vkcoffee/android/orm/ClassMetaData;->mIndexMetaData:Ljava/util/Map;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/vkcoffee/android/orm/ClassMetaData;->mIndexMetaData:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    .local v1, "sb":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/vkcoffee/android/orm/ClassMetaData;->mIndexMetaData:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 125
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/reflect/Field;Lcom/vkcoffee/android/orm/Index$MetaData;>;"
    invoke-virtual {p0, v1, v0}, Lcom/vkcoffee/android/orm/ClassMetaData;->describeIndex(Ljava/lang/StringBuilder;Ljava/util/Map$Entry;)V

    .line 126
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 127
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_0

    .line 131
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/reflect/Field;Lcom/vkcoffee/android/orm/Index$MetaData;>;"
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    iget-object v2, p0, Lcom/vkcoffee/android/orm/ClassMetaData;->mMigrationData:Lcom/vkcoffee/android/orm/Version$MetaData;

    if-nez v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    return v2

    :cond_1
    iget-object v2, p0, Lcom/vkcoffee/android/orm/ClassMetaData;->mMigrationData:Lcom/vkcoffee/android/orm/Version$MetaData;

    iget v2, v2, Lcom/vkcoffee/android/orm/Version$MetaData;->version:I

    goto :goto_1
.end method

.method private createView(Landroid/database/sqlite/SQLiteDatabase;)I
    .locals 2
    .param p1, "database"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 115
    .local p0, "this":Lcom/vkcoffee/android/orm/ClassMetaData;, "Lcom/vkcoffee/android/orm/ClassMetaData<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "CREATE VIEW IF NOT EXISTS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/orm/ClassMetaData;->mViewData:Lcom/vkcoffee/android/orm/View$MetaData;

    iget-object v1, v1, Lcom/vkcoffee/android/orm/View$MetaData;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " AS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/orm/ClassMetaData;->mViewData:Lcom/vkcoffee/android/orm/View$MetaData;

    iget-object v1, v1, Lcom/vkcoffee/android/orm/View$MetaData;->query:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/vkcoffee/android/orm/ClassMetaData;->mMigrationData:Lcom/vkcoffee/android/orm/Version$MetaData;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/orm/ClassMetaData;->mMigrationData:Lcom/vkcoffee/android/orm/Version$MetaData;

    iget v0, v0, Lcom/vkcoffee/android/orm/Version$MetaData;->version:I

    goto :goto_0
.end method

.method private loadFieldsMetaData(Ljava/lang/Class;Z)V
    .locals 12
    .param p1, "clazz"    # Ljava/lang/Class;
    .param p2, "recursive"    # Z

    .prologue
    .line 303
    .local p0, "this":Lcom/vkcoffee/android/orm/ClassMetaData;, "Lcom/vkcoffee/android/orm/ClassMetaData<TT;>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v9

    array-length v10, v9

    const/4 v6, 0x0

    move v8, v6

    :goto_0
    if-ge v8, v10, :cond_6

    aget-object v2, v9, v8

    .line 304
    .local v2, "field":Ljava/lang/reflect/Field;
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 305
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v6

    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v6

    if-nez v6, :cond_5

    .line 306
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v1

    .line 307
    .local v1, "annotations":[Ljava/lang/annotation/Annotation;
    if-eqz v1, :cond_5

    .line 308
    array-length v11, v1

    const/4 v6, 0x0

    move v7, v6

    :goto_1
    if-ge v7, v11, :cond_5

    aget-object v0, v1, v7

    .line 309
    .local v0, "annotation":Ljava/lang/annotation/Annotation;
    instance-of v6, v0, Lcom/vkcoffee/android/orm/Column;

    if-eqz v6, :cond_2

    .line 310
    iget-object v6, p0, Lcom/vkcoffee/android/orm/ClassMetaData;->mColumnMetaData:Ljava/util/Map;

    if-nez v6, :cond_0

    .line 311
    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v6, p0, Lcom/vkcoffee/android/orm/ClassMetaData;->mColumnMetaData:Ljava/util/Map;

    .line 313
    :cond_0
    new-instance v4, Lcom/vkcoffee/android/orm/Column$MetaData;

    move-object v6, v0

    check-cast v6, Lcom/vkcoffee/android/orm/Column;

    invoke-direct {v4, v6, v2}, Lcom/vkcoffee/android/orm/Column$MetaData;-><init>(Lcom/vkcoffee/android/orm/Column;Ljava/lang/reflect/Field;)V

    .line 314
    .local v4, "metaData":Lcom/vkcoffee/android/orm/Column$MetaData;
    iget-boolean v6, v4, Lcom/vkcoffee/android/orm/Column$MetaData;->primaryKey:Z

    if-eqz v6, :cond_1

    .line 315
    iput-object v2, p0, Lcom/vkcoffee/android/orm/ClassMetaData;->mPrimaryKey:Ljava/lang/reflect/Field;

    .line 317
    :cond_1
    iget-object v6, p0, Lcom/vkcoffee/android/orm/ClassMetaData;->mColumnMetaData:Ljava/util/Map;

    invoke-interface {v6, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    .end local v4    # "metaData":Lcom/vkcoffee/android/orm/Column$MetaData;
    :cond_2
    instance-of v6, v0, Lcom/vkcoffee/android/orm/Index;

    if-eqz v6, :cond_4

    .line 321
    iget-object v6, p0, Lcom/vkcoffee/android/orm/ClassMetaData;->mIndexMetaData:Ljava/util/Map;

    if-nez v6, :cond_3

    .line 322
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lcom/vkcoffee/android/orm/ClassMetaData;->mIndexMetaData:Ljava/util/Map;

    .line 324
    :cond_3
    new-instance v3, Lcom/vkcoffee/android/orm/Index$MetaData;

    check-cast v0, Lcom/vkcoffee/android/orm/Index;

    .end local v0    # "annotation":Ljava/lang/annotation/Annotation;
    invoke-direct {v3, v0}, Lcom/vkcoffee/android/orm/Index$MetaData;-><init>(Lcom/vkcoffee/android/orm/Index;)V

    .line 325
    .local v3, "indexMetaData":Lcom/vkcoffee/android/orm/Index$MetaData;
    iget-object v6, p0, Lcom/vkcoffee/android/orm/ClassMetaData;->mIndexMetaData:Ljava/util/Map;

    invoke-interface {v6, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    .end local v3    # "indexMetaData":Lcom/vkcoffee/android/orm/Index$MetaData;
    :cond_4
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    goto :goto_1

    .line 303
    .end local v1    # "annotations":[Ljava/lang/annotation/Annotation;
    :cond_5
    add-int/lit8 v6, v8, 0x1

    move v8, v6

    goto :goto_0

    .line 332
    .end local v2    # "field":Ljava/lang/reflect/Field;
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v5

    .line 333
    .local v5, "superclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p2, :cond_7

    if-eqz v5, :cond_7

    const-class v6, Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 334
    const/4 v6, 0x1

    invoke-direct {p0, v5, v6}, Lcom/vkcoffee/android/orm/ClassMetaData;->loadFieldsMetaData(Ljava/lang/Class;Z)V

    .line 336
    :cond_7
    return-void
.end method


# virtual methods
.method bind(Landroid/content/ContentValues;Ljava/lang/Object;)V
    .locals 6
    .param p1, "cv"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentValues;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 135
    .local p0, "this":Lcom/vkcoffee/android/orm/ClassMetaData;, "Lcom/vkcoffee/android/orm/ClassMetaData<TT;>;"
    .local p2, "entity":Ljava/lang/Object;, "TT;"
    iget-object v3, p0, Lcom/vkcoffee/android/orm/ClassMetaData;->mViewData:Lcom/vkcoffee/android/orm/View$MetaData;

    if-eqz v3, :cond_0

    .line 136
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Insert or Update are not supported for Views"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 139
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/vkcoffee/android/orm/ClassMetaData;->mColumnMetaData:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 140
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/reflect/Field;Lcom/vkcoffee/android/orm/Column$MetaData;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/orm/Column$MetaData;

    .line 141
    .local v0, "data":Lcom/vkcoffee/android/orm/Column$MetaData;
    iget-object v5, v0, Lcom/vkcoffee/android/orm/Column$MetaData;->name:Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/Field;

    invoke-virtual {v0, v5, v3, p1, p2}, Lcom/vkcoffee/android/orm/Column$MetaData;->bind(Ljava/lang/String;Ljava/lang/reflect/Field;Landroid/content/ContentValues;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 146
    .end local v0    # "data":Lcom/vkcoffee/android/orm/Column$MetaData;
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/reflect/Field;Lcom/vkcoffee/android/orm/Column$MetaData;>;"
    .end local p2    # "entity":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v1

    .line 147
    .local v1, "e":Ljava/lang/IllegalAccessException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 143
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    .restart local p2    # "entity":Ljava/lang/Object;, "TT;"
    :cond_1
    :try_start_1
    iget-boolean v3, p0, Lcom/vkcoffee/android/orm/ClassMetaData;->mCustom:Z

    if-eqz v3, :cond_2

    .line 144
    check-cast p2, Lcom/vkcoffee/android/orm/CustomRecord;

    .end local p2    # "entity":Ljava/lang/Object;, "TT;"
    invoke-interface {p2}, Lcom/vkcoffee/android/orm/CustomRecord;->beforeDeflate()V
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0

    .line 149
    :cond_2
    return-void
.end method

.method bind(Landroid/database/DatabaseUtils$InsertHelper;Ljava/lang/Object;)V
    .locals 6
    .param p1, "helper"    # Landroid/database/DatabaseUtils$InsertHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/DatabaseUtils$InsertHelper;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 152
    .local p0, "this":Lcom/vkcoffee/android/orm/ClassMetaData;, "Lcom/vkcoffee/android/orm/ClassMetaData<TT;>;"
    .local p2, "entity":Ljava/lang/Object;, "TT;"
    iget-object v4, p0, Lcom/vkcoffee/android/orm/ClassMetaData;->mViewData:Lcom/vkcoffee/android/orm/View$MetaData;

    if-eqz v4, :cond_0

    .line 153
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "Insert or Update are not supported for Views"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 156
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/vkcoffee/android/orm/ClassMetaData;->mColumnMetaData:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 157
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/reflect/Field;Lcom/vkcoffee/android/orm/Column$MetaData;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/orm/Column$MetaData;

    .line 158
    .local v0, "data":Lcom/vkcoffee/android/orm/Column$MetaData;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/Field;

    .line 160
    .local v3, "field":Ljava/lang/reflect/Field;
    iget v5, v0, Lcom/vkcoffee/android/orm/Column$MetaData;->bindColumnIndex:I

    if-gez v5, :cond_1

    .line 161
    iget-object v5, v0, Lcom/vkcoffee/android/orm/Column$MetaData;->name:Ljava/lang/String;

    invoke-virtual {p1, v5}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    iput v5, v0, Lcom/vkcoffee/android/orm/Column$MetaData;->bindColumnIndex:I

    .line 163
    :cond_1
    iget v5, v0, Lcom/vkcoffee/android/orm/Column$MetaData;->bindColumnIndex:I

    invoke-virtual {v0, v5, v3, p1, p2}, Lcom/vkcoffee/android/orm/Column$MetaData;->bind(ILjava/lang/reflect/Field;Landroid/database/DatabaseUtils$InsertHelper;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 168
    .end local v0    # "data":Lcom/vkcoffee/android/orm/Column$MetaData;
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/reflect/Field;Lcom/vkcoffee/android/orm/Column$MetaData;>;"
    .end local v3    # "field":Ljava/lang/reflect/Field;
    .end local p2    # "entity":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v1

    .line 169
    .local v1, "e":Ljava/lang/IllegalAccessException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 165
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    .restart local p2    # "entity":Ljava/lang/Object;, "TT;"
    :cond_2
    :try_start_1
    iget-boolean v4, p0, Lcom/vkcoffee/android/orm/ClassMetaData;->mCustom:Z

    if-eqz v4, :cond_3

    .line 166
    check-cast p2, Lcom/vkcoffee/android/orm/CustomRecord;

    .end local p2    # "entity":Ljava/lang/Object;, "TT;"
    invoke-interface {p2}, Lcom/vkcoffee/android/orm/CustomRecord;->beforeDeflate()V
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0

    .line 171
    :cond_3
    return-void
.end method

.method createRecord(Landroid/database/sqlite/SQLiteDatabase;)I
    .locals 1
    .param p1, "database"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 107
    .local p0, "this":Lcom/vkcoffee/android/orm/ClassMetaData;, "Lcom/vkcoffee/android/orm/ClassMetaData<TT;>;"
    iget-object v0, p0, Lcom/vkcoffee/android/orm/ClassMetaData;->mEntityData:Lcom/vkcoffee/android/orm/Entity$MetaData;

    if-eqz v0, :cond_0

    .line 108
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/orm/ClassMetaData;->createTable(Landroid/database/sqlite/SQLiteDatabase;)I

    move-result v0

    .line 110
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/orm/ClassMetaData;->createView(Landroid/database/sqlite/SQLiteDatabase;)I

    move-result v0

    goto :goto_0
.end method

.method describeColumns()Ljava/lang/CharSequence;
    .locals 6

    .prologue
    .local p0, "this":Lcom/vkcoffee/android/orm/ClassMetaData;, "Lcom/vkcoffee/android/orm/ClassMetaData<TT;>;"
    const/16 v5, 0x20

    .line 198
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 199
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/16 v3, 0x28

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 200
    const/4 v1, 0x1

    .line 201
    .local v1, "firstTime":Z
    iget-object v3, p0, Lcom/vkcoffee/android/orm/ClassMetaData;->mColumnMetaData:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/orm/Column$MetaData;

    .line 202
    .local v0, "entry":Lcom/vkcoffee/android/orm/Column$MetaData;
    if-eqz v1, :cond_5

    .line 203
    const/4 v1, 0x0

    .line 209
    :goto_1
    iget-object v4, v0, Lcom/vkcoffee/android/orm/Column$MetaData;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 211
    invoke-virtual {p0, v2, v0}, Lcom/vkcoffee/android/orm/ClassMetaData;->describeType(Ljava/lang/StringBuilder;Lcom/vkcoffee/android/orm/Column$MetaData;)V

    .line 213
    iget-boolean v4, v0, Lcom/vkcoffee/android/orm/Column$MetaData;->unique:Z

    if-eqz v4, :cond_1

    iget-boolean v4, v0, Lcom/vkcoffee/android/orm/Column$MetaData;->primaryKey:Z

    if-nez v4, :cond_1

    .line 214
    const-string/jumbo v4, " UNIQUE"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    :cond_1
    iget-boolean v4, v0, Lcom/vkcoffee/android/orm/Column$MetaData;->nullable:Z

    if-nez v4, :cond_2

    iget-boolean v4, v0, Lcom/vkcoffee/android/orm/Column$MetaData;->primaryKey:Z

    if-nez v4, :cond_2

    .line 218
    const-string/jumbo v4, " NOT NULL"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    :cond_2
    iget-boolean v4, v0, Lcom/vkcoffee/android/orm/Column$MetaData;->primaryKey:Z

    if-nez v4, :cond_3

    iget-object v4, v0, Lcom/vkcoffee/android/orm/Column$MetaData;->defaultValue:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 222
    const-string/jumbo v4, " DEFAULT "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    iget-object v4, v0, Lcom/vkcoffee/android/orm/Column$MetaData;->defaultValue:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    :cond_3
    iget-boolean v4, v0, Lcom/vkcoffee/android/orm/Column$MetaData;->primaryKey:Z

    if-eqz v4, :cond_4

    .line 227
    const-string/jumbo v4, " PRIMARY KEY"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    :cond_4
    iget-boolean v4, v0, Lcom/vkcoffee/android/orm/Column$MetaData;->autoincrement:Z

    if-eqz v4, :cond_0

    .line 231
    const-string/jumbo v4, " AUTOINCREMENT"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 205
    :cond_5
    const/16 v4, 0x2c

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 206
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 235
    .end local v0    # "entry":Lcom/vkcoffee/android/orm/Column$MetaData;
    :cond_6
    const/16 v3, 0x29

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 236
    return-object v2
.end method

.method describeIndex(Ljava/lang/StringBuilder;Ljava/util/Map$Entry;)V
    .locals 10
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/reflect/Field;",
            "Lcom/vkcoffee/android/orm/Index$MetaData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/vkcoffee/android/orm/ClassMetaData;, "Lcom/vkcoffee/android/orm/ClassMetaData<TT;>;"
    .local p2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/reflect/Field;Lcom/vkcoffee/android/orm/Index$MetaData;>;"
    const/16 v9, 0x29

    const/16 v8, 0x28

    .line 253
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Field;

    .line 254
    .local v2, "field":Ljava/lang/reflect/Field;
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/orm/Index$MetaData;

    .line 255
    .local v1, "data":Lcom/vkcoffee/android/orm/Index$MetaData;
    const-string/jumbo v3, "CREATE"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    iget-boolean v3, v1, Lcom/vkcoffee/android/orm/Index$MetaData;->unique:Z

    if-eqz v3, :cond_1

    .line 257
    const-string/jumbo v3, " UNIQUE"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    :cond_0
    :goto_0
    const-string/jumbo v3, " INDEX IF NOT EXISTS "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    iget-object v3, v1, Lcom/vkcoffee/android/orm/Index$MetaData;->value:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    const-string/jumbo v3, " ON "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    invoke-virtual {p0}, Lcom/vkcoffee/android/orm/ClassMetaData;->getRecordName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    const/16 v3, 0x20

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 266
    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 267
    iget-object v3, p0, Lcom/vkcoffee/android/orm/ClassMetaData;->mColumnMetaData:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/orm/Column$MetaData;

    .line 268
    .local v0, "columnData":Lcom/vkcoffee/android/orm/Column$MetaData;
    if-nez v0, :cond_2

    .line 269
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Index "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/vkcoffee/android/orm/Index$MetaData;->value:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " is using without @Column annotation"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 258
    .end local v0    # "columnData":Lcom/vkcoffee/android/orm/Column$MetaData;
    :cond_1
    iget-boolean v3, v1, Lcom/vkcoffee/android/orm/Index$MetaData;->fulltext:Z

    if-eqz v3, :cond_0

    .line 259
    const-string/jumbo v3, " FULLTEXT"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 271
    .restart local v0    # "columnData":Lcom/vkcoffee/android/orm/Column$MetaData;
    :cond_2
    iget-object v3, v0, Lcom/vkcoffee/android/orm/Column$MetaData;->name:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    iget-wide v4, v1, Lcom/vkcoffee/android/orm/Index$MetaData;->length:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_3

    .line 273
    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 274
    iget-wide v4, v1, Lcom/vkcoffee/android/orm/Index$MetaData;->length:J

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 275
    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 277
    :cond_3
    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 278
    const/16 v3, 0x3b

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 279
    return-void
.end method

.method describeType(Ljava/lang/StringBuilder;Lcom/vkcoffee/android/orm/Column$MetaData;)V
    .locals 4
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "entry"    # Lcom/vkcoffee/android/orm/Column$MetaData;

    .prologue
    .line 240
    .local p0, "this":Lcom/vkcoffee/android/orm/ClassMetaData;, "Lcom/vkcoffee/android/orm/ClassMetaData<TT;>;"
    iget-object v0, p2, Lcom/vkcoffee/android/orm/Column$MetaData;->type:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 241
    iget-object v0, p2, Lcom/vkcoffee/android/orm/Column$MetaData;->type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    :goto_0
    iget-wide v0, p2, Lcom/vkcoffee/android/orm/Column$MetaData;->size:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 246
    const/16 v0, 0x28

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 247
    iget-wide v0, p2, Lcom/vkcoffee/android/orm/Column$MetaData;->size:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 248
    const/16 v0, 0x29

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 250
    :cond_0
    return-void

    .line 243
    :cond_1
    invoke-virtual {p2}, Lcom/vkcoffee/android/orm/Column$MetaData;->getDefaultSQLType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public getColumnName(Ljava/lang/reflect/Field;)Ljava/lang/String;
    .locals 1
    .param p1, "field"    # Ljava/lang/reflect/Field;

    .prologue
    .line 339
    .local p0, "this":Lcom/vkcoffee/android/orm/ClassMetaData;, "Lcom/vkcoffee/android/orm/ClassMetaData<TT;>;"
    iget-object v0, p0, Lcom/vkcoffee/android/orm/ClassMetaData;->mColumnMetaData:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/orm/Column$MetaData;

    iget-object v0, v0, Lcom/vkcoffee/android/orm/Column$MetaData;->name:Ljava/lang/String;

    return-object v0
.end method

.method getPrimaryColumnName()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 294
    .local p0, "this":Lcom/vkcoffee/android/orm/ClassMetaData;, "Lcom/vkcoffee/android/orm/ClassMetaData<TT;>;"
    iget-object v0, p0, Lcom/vkcoffee/android/orm/ClassMetaData;->mPrimaryKeyColumn:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/vkcoffee/android/orm/ClassMetaData;->mPrimaryKey:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/vkcoffee/android/orm/ClassMetaData;->mPrimaryKey:Ljava/lang/reflect/Field;

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/orm/ClassMetaData;->getColumnName(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/orm/ClassMetaData;->mPrimaryKeyColumn:Ljava/lang/String;

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/orm/ClassMetaData;->mPrimaryKeyColumn:Ljava/lang/String;

    return-object v0
.end method

.method getPrimaryKey(Ljava/lang/Object;)Ljava/lang/String;
    .locals 4
    .param p1, "from"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 282
    .local p0, "this":Lcom/vkcoffee/android/orm/ClassMetaData;, "Lcom/vkcoffee/android/orm/ClassMetaData<TT;>;"
    iget-object v1, p0, Lcom/vkcoffee/android/orm/ClassMetaData;->mPrimaryKey:Ljava/lang/reflect/Field;

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 283
    .local v0, "type":Ljava/lang/Class;
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v1, v0, :cond_0

    .line 284
    iget-object v1, p0, Lcom/vkcoffee/android/orm/ClassMetaData;->mPrimaryKey:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 289
    :goto_0
    return-object v1

    .line 286
    :cond_0
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v1, v0, :cond_1

    .line 287
    iget-object v1, p0, Lcom/vkcoffee/android/orm/ClassMetaData;->mPrimaryKey:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 289
    :cond_1
    iget-object v1, p0, Lcom/vkcoffee/android/orm/ClassMetaData;->mPrimaryKey:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method getRecordName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    .local p0, "this":Lcom/vkcoffee/android/orm/ClassMetaData;, "Lcom/vkcoffee/android/orm/ClassMetaData<TT;>;"
    iget-object v0, p0, Lcom/vkcoffee/android/orm/ClassMetaData;->mEntityData:Lcom/vkcoffee/android/orm/Entity$MetaData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/orm/ClassMetaData;->mEntityData:Lcom/vkcoffee/android/orm/Entity$MetaData;

    iget-object v0, v0, Lcom/vkcoffee/android/orm/Entity$MetaData;->tableName:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/orm/ClassMetaData;->mViewData:Lcom/vkcoffee/android/orm/View$MetaData;

    iget-object v0, v0, Lcom/vkcoffee/android/orm/View$MetaData;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method isMigrationRequired(I)Z
    .locals 1
    .param p1, "currentVersionCode"    # I

    .prologue
    .line 85
    .local p0, "this":Lcom/vkcoffee/android/orm/ClassMetaData;, "Lcom/vkcoffee/android/orm/ClassMetaData<TT;>;"
    iget-object v0, p0, Lcom/vkcoffee/android/orm/ClassMetaData;->mMigrationData:Lcom/vkcoffee/android/orm/Version$MetaData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/orm/ClassMetaData;->mMigrationData:Lcom/vkcoffee/android/orm/Version$MetaData;

    iget v0, v0, Lcom/vkcoffee/android/orm/Version$MetaData;->version:I

    if-le v0, p1, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/orm/ClassMetaData;->mMigrationData:Lcom/vkcoffee/android/orm/Version$MetaData;

    iget-object v0, v0, Lcom/vkcoffee/android/orm/Version$MetaData;->mapTable:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/orm/ClassMetaData;->mMigrationData:Lcom/vkcoffee/android/orm/Version$MetaData;

    iget-object v0, v0, Lcom/vkcoffee/android/orm/Version$MetaData;->mapTable:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method migrate(ILandroid/database/sqlite/SQLiteDatabase;)I
    .locals 6
    .param p1, "currentVersionCode"    # I
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 90
    .local p0, "this":Lcom/vkcoffee/android/orm/ClassMetaData;, "Lcom/vkcoffee/android/orm/ClassMetaData<TT;>;"
    iget-object v4, p0, Lcom/vkcoffee/android/orm/ClassMetaData;->mMigrationData:Lcom/vkcoffee/android/orm/Version$MetaData;

    iget-object v4, v4, Lcom/vkcoffee/android/orm/Version$MetaData;->mapTable:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 91
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Class<+Lcom/vkcoffee/android/orm/MigrationScript;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 92
    .local v3, "migrationVersion":I
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 93
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/vkcoffee/android/orm/MigrationScript;>;"
    if-lt v3, p1, :cond_0

    iget-object v4, p0, Lcom/vkcoffee/android/orm/ClassMetaData;->mMigrationData:Lcom/vkcoffee/android/orm/Version$MetaData;

    iget v4, v4, Lcom/vkcoffee/android/orm/Version$MetaData;->version:I

    if-gt v3, v4, :cond_0

    if-eqz v0, :cond_0

    .line 95
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkcoffee/android/orm/MigrationScript;

    invoke-interface {v4, p1, p2}, Lcom/vkcoffee/android/orm/MigrationScript;->apply(ILandroid/database/sqlite/SQLiteDatabase;)I
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    move-result p1

    goto :goto_0

    .line 96
    :catch_0
    move-exception v1

    .line 97
    .local v1, "e":Ljava/lang/InstantiationException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 98
    .end local v1    # "e":Ljava/lang/InstantiationException;
    :catch_1
    move-exception v1

    .line 99
    .local v1, "e":Ljava/lang/IllegalAccessException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 103
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/vkcoffee/android/orm/MigrationScript;>;"
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Class<+Lcom/vkcoffee/android/orm/MigrationScript;>;>;"
    .end local v3    # "migrationVersion":I
    :cond_1
    return p1
.end method

.method parse(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 8
    .param p1, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 176
    .local p0, "this":Lcom/vkcoffee/android/orm/ClassMetaData;, "Lcom/vkcoffee/android/orm/ClassMetaData<TT;>;"
    :try_start_0
    iget-object v6, p0, Lcom/vkcoffee/android/orm/ClassMetaData;->mTargetClass:Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    .line 177
    .local v5, "result":Ljava/lang/Object;, "TT;"
    iget-object v6, p0, Lcom/vkcoffee/android/orm/ClassMetaData;->mColumnMetaData:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 178
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/reflect/Field;Lcom/vkcoffee/android/orm/Column$MetaData;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/orm/Column$MetaData;

    .line 179
    .local v1, "data":Lcom/vkcoffee/android/orm/Column$MetaData;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/reflect/Field;

    .line 181
    .local v4, "field":Ljava/lang/reflect/Field;
    iget v7, v1, Lcom/vkcoffee/android/orm/Column$MetaData;->cursorColumnIndex:I

    if-gez v7, :cond_0

    .line 182
    iget-object v7, v1, Lcom/vkcoffee/android/orm/Column$MetaData;->name:Ljava/lang/String;

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    iput v7, v1, Lcom/vkcoffee/android/orm/Column$MetaData;->cursorColumnIndex:I

    .line 184
    :cond_0
    iget v7, v1, Lcom/vkcoffee/android/orm/Column$MetaData;->cursorColumnIndex:I

    invoke-virtual {v1, v7, v4, p1, v5}, Lcom/vkcoffee/android/orm/Column$MetaData;->set(ILjava/lang/reflect/Field;Landroid/database/Cursor;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 190
    .end local v1    # "data":Lcom/vkcoffee/android/orm/Column$MetaData;
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/reflect/Field;Lcom/vkcoffee/android/orm/Column$MetaData;>;"
    .end local v4    # "field":Ljava/lang/reflect/Field;
    .end local v5    # "result":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v2

    .line 191
    .local v2, "e":Ljava/lang/InstantiationException;
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 186
    .end local v2    # "e":Ljava/lang/InstantiationException;
    .restart local v5    # "result":Ljava/lang/Object;, "TT;"
    :cond_1
    :try_start_1
    iget-boolean v6, p0, Lcom/vkcoffee/android/orm/ClassMetaData;->mCustom:Z

    if-eqz v6, :cond_2

    .line 187
    move-object v0, v5

    check-cast v0, Lcom/vkcoffee/android/orm/CustomRecord;

    move-object v6, v0

    invoke-interface {v6}, Lcom/vkcoffee/android/orm/CustomRecord;->afterInflate()V
    :try_end_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    .line 189
    :cond_2
    return-object v5

    .line 192
    .end local v5    # "result":Ljava/lang/Object;, "TT;"
    :catch_1
    move-exception v2

    .line 193
    .local v2, "e":Ljava/lang/IllegalAccessException;
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6
.end method
