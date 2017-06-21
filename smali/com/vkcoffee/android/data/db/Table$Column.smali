.class public Lcom/vkcoffee/android/data/db/Table$Column;
.super Ljava/lang/Object;
.source "Table.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/data/db/Table;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Column"
.end annotation


# instance fields
.field private isAutoincrement:Z

.field private isNotNull:Z

.field private isPrimaryKey:Z

.field private final name:Ljava/lang/String;

.field private final table:Lcom/vkcoffee/android/data/db/Table;

.field private final type:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/data/db/Table;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "table"    # Lcom/vkcoffee/android/data/db/Table;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-boolean v0, p0, Lcom/vkcoffee/android/data/db/Table$Column;->isPrimaryKey:Z

    .line 12
    iput-boolean v0, p0, Lcom/vkcoffee/android/data/db/Table$Column;->isAutoincrement:Z

    .line 13
    iput-boolean v0, p0, Lcom/vkcoffee/android/data/db/Table$Column;->isNotNull:Z

    .line 16
    iput-object p1, p0, Lcom/vkcoffee/android/data/db/Table$Column;->table:Lcom/vkcoffee/android/data/db/Table;

    .line 17
    iput-object p2, p0, Lcom/vkcoffee/android/data/db/Table$Column;->name:Ljava/lang/String;

    .line 18
    iput-object p3, p0, Lcom/vkcoffee/android/data/db/Table$Column;->type:Ljava/lang/String;

    .line 19
    return-void
.end method

.method synthetic constructor <init>(Lcom/vkcoffee/android/data/db/Table;Ljava/lang/String;Ljava/lang/String;Lcom/vkcoffee/android/data/db/Table$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vkcoffee/android/data/db/Table;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Lcom/vkcoffee/android/data/db/Table$1;

    .prologue
    .line 7
    invoke-direct {p0, p1, p2, p3}, Lcom/vkcoffee/android/data/db/Table$Column;-><init>(Lcom/vkcoffee/android/data/db/Table;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/vkcoffee/android/data/db/Table$Column;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/data/db/Table$Column;

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/vkcoffee/android/data/db/Table$Column;->toSql()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private toSql()Ljava/lang/String;
    .locals 3

    .prologue
    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vkcoffee/android/data/db/Table$Column;->name:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/data/db/Table$Column;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 56
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-boolean v1, p0, Lcom/vkcoffee/android/data/db/Table$Column;->isNotNull:Z

    if-eqz v1, :cond_0

    .line 57
    const-string/jumbo v1, " NOT NULL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    :cond_0
    iget-boolean v1, p0, Lcom/vkcoffee/android/data/db/Table$Column;->isPrimaryKey:Z

    if-eqz v1, :cond_1

    .line 60
    const-string/jumbo v1, " PRIMARY KEY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    :cond_1
    iget-boolean v1, p0, Lcom/vkcoffee/android/data/db/Table$Column;->isAutoincrement:Z

    if-eqz v1, :cond_2

    .line 63
    const-string/jumbo v1, " AUTOINCREMENT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public createSql()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/vkcoffee/android/data/db/Table$Column;->table:Lcom/vkcoffee/android/data/db/Table;

    invoke-virtual {v0}, Lcom/vkcoffee/android/data/db/Table;->createSql()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setAutoincrement()Lcom/vkcoffee/android/data/db/Table$Column;
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkcoffee/android/data/db/Table$Column;->isAutoincrement:Z

    .line 28
    return-object p0
.end method

.method public setNotNull()Lcom/vkcoffee/android/data/db/Table$Column;
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkcoffee/android/data/db/Table$Column;->isNotNull:Z

    .line 33
    return-object p0
.end method

.method public setPrimaryKey()Lcom/vkcoffee/android/data/db/Table$Column;
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkcoffee/android/data/db/Table$Column;->isPrimaryKey:Z

    .line 23
    return-object p0
.end method

.method public withIntegerColumn(Ljava/lang/String;)Lcom/vkcoffee/android/data/db/Table$Column;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 37
    new-instance v0, Lcom/vkcoffee/android/data/db/Table$Column;

    iget-object v1, p0, Lcom/vkcoffee/android/data/db/Table$Column;->table:Lcom/vkcoffee/android/data/db/Table;

    const-string/jumbo v2, "INTEGER"

    invoke-direct {v0, v1, p1, v2}, Lcom/vkcoffee/android/data/db/Table$Column;-><init>(Lcom/vkcoffee/android/data/db/Table;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .local v0, "column":Lcom/vkcoffee/android/data/db/Table$Column;
    iget-object v1, p0, Lcom/vkcoffee/android/data/db/Table$Column;->table:Lcom/vkcoffee/android/data/db/Table;

    invoke-static {v1}, Lcom/vkcoffee/android/data/db/Table;->access$000(Lcom/vkcoffee/android/data/db/Table;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    return-object v0
.end method

.method public withRealColumn(Ljava/lang/String;)Lcom/vkcoffee/android/data/db/Table$Column;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 49
    new-instance v0, Lcom/vkcoffee/android/data/db/Table$Column;

    iget-object v1, p0, Lcom/vkcoffee/android/data/db/Table$Column;->table:Lcom/vkcoffee/android/data/db/Table;

    const-string/jumbo v2, "REAL"

    invoke-direct {v0, v1, p1, v2}, Lcom/vkcoffee/android/data/db/Table$Column;-><init>(Lcom/vkcoffee/android/data/db/Table;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .local v0, "column":Lcom/vkcoffee/android/data/db/Table$Column;
    iget-object v1, p0, Lcom/vkcoffee/android/data/db/Table$Column;->table:Lcom/vkcoffee/android/data/db/Table;

    invoke-static {v1}, Lcom/vkcoffee/android/data/db/Table;->access$000(Lcom/vkcoffee/android/data/db/Table;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    return-object v0
.end method

.method public withTextColumn(Ljava/lang/String;)Lcom/vkcoffee/android/data/db/Table$Column;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 43
    new-instance v0, Lcom/vkcoffee/android/data/db/Table$Column;

    iget-object v1, p0, Lcom/vkcoffee/android/data/db/Table$Column;->table:Lcom/vkcoffee/android/data/db/Table;

    const-string/jumbo v2, "TEXT"

    invoke-direct {v0, v1, p1, v2}, Lcom/vkcoffee/android/data/db/Table$Column;-><init>(Lcom/vkcoffee/android/data/db/Table;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .local v0, "column":Lcom/vkcoffee/android/data/db/Table$Column;
    iget-object v1, p0, Lcom/vkcoffee/android/data/db/Table$Column;->table:Lcom/vkcoffee/android/data/db/Table;

    invoke-static {v1}, Lcom/vkcoffee/android/data/db/Table;->access$000(Lcom/vkcoffee/android/data/db/Table;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    return-object v0
.end method
