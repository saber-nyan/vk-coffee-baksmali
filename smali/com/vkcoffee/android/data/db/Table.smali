.class public Lcom/vkcoffee/android/data/db/Table;
.super Ljava/lang/Object;
.source "Table.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/data/db/Table$Column;
    }
.end annotation


# instance fields
.field private final columns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/data/db/Table$Column;",
            ">;"
        }
    .end annotation
.end field

.field private final tableName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "tableName"    # Ljava/lang/String;

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/data/db/Table;->columns:Ljava/util/ArrayList;

    .line 77
    iput-object p1, p0, Lcom/vkcoffee/android/data/db/Table;->tableName:Ljava/lang/String;

    .line 78
    return-void
.end method

.method static synthetic access$000(Lcom/vkcoffee/android/data/db/Table;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/data/db/Table;

    .prologue
    .line 5
    iget-object v0, p0, Lcom/vkcoffee/android/data/db/Table;->columns:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static dropSql(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "tableName"    # Ljava/lang/String;

    .prologue
    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "DROP TABLE IF EXISTS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public createSql()Ljava/lang/String;
    .locals 4

    .prologue
    .line 103
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "CREATE TABLE IF NOT EXISTS "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/vkcoffee/android/data/db/Table;->tableName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 104
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/vkcoffee/android/data/db/Table;->columns:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 105
    if-nez v1, :cond_0

    .line 106
    const-string/jumbo v2, " ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    :cond_0
    iget-object v2, p0, Lcom/vkcoffee/android/data/db/Table;->columns:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkcoffee/android/data/db/Table$Column;

    invoke-static {v2}, Lcom/vkcoffee/android/data/db/Table$Column;->access$200(Lcom/vkcoffee/android/data/db/Table$Column;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    iget-object v2, p0, Lcom/vkcoffee/android/data/db/Table;->columns:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_1

    .line 110
    const-string/jumbo v2, ");"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 112
    :cond_1
    const-string/jumbo v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 115
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public withIntegerColumn(Ljava/lang/String;)Lcom/vkcoffee/android/data/db/Table$Column;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 81
    new-instance v0, Lcom/vkcoffee/android/data/db/Table$Column;

    const-string/jumbo v1, "INTEGER"

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/vkcoffee/android/data/db/Table$Column;-><init>(Lcom/vkcoffee/android/data/db/Table;Ljava/lang/String;Ljava/lang/String;Lcom/vkcoffee/android/data/db/Table$1;)V

    .line 82
    .local v0, "column":Lcom/vkcoffee/android/data/db/Table$Column;
    iget-object v1, p0, Lcom/vkcoffee/android/data/db/Table;->columns:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    return-object v0
.end method

.method public withRealColumn(Ljava/lang/String;)Lcom/vkcoffee/android/data/db/Table$Column;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 93
    new-instance v0, Lcom/vkcoffee/android/data/db/Table$Column;

    const-string/jumbo v1, "REAL"

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/vkcoffee/android/data/db/Table$Column;-><init>(Lcom/vkcoffee/android/data/db/Table;Ljava/lang/String;Ljava/lang/String;Lcom/vkcoffee/android/data/db/Table$1;)V

    .line 94
    .local v0, "column":Lcom/vkcoffee/android/data/db/Table$Column;
    iget-object v1, p0, Lcom/vkcoffee/android/data/db/Table;->columns:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    return-object v0
.end method

.method public withTextColumn(Ljava/lang/String;)Lcom/vkcoffee/android/data/db/Table$Column;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 87
    new-instance v0, Lcom/vkcoffee/android/data/db/Table$Column;

    const-string/jumbo v1, "TEXT"

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/vkcoffee/android/data/db/Table$Column;-><init>(Lcom/vkcoffee/android/data/db/Table;Ljava/lang/String;Ljava/lang/String;Lcom/vkcoffee/android/data/db/Table$1;)V

    .line 88
    .local v0, "column":Lcom/vkcoffee/android/data/db/Table$Column;
    iget-object v1, p0, Lcom/vkcoffee/android/data/db/Table;->columns:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    return-object v0
.end method
