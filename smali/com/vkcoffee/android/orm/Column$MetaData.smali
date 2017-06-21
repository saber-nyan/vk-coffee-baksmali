.class public final Lcom/vkcoffee/android/orm/Column$MetaData;
.super Ljava/lang/Object;
.source "Column.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/orm/Column;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MetaData"
.end annotation


# instance fields
.field final autoincrement:Z

.field bindColumnIndex:I

.field cursorColumnIndex:I

.field final defaultValue:Ljava/lang/String;

.field private final fieldType:Lcom/vkcoffee/android/orm/FieldType;

.field final name:Ljava/lang/String;

.field final nullable:Z

.field final primaryKey:Z

.field final size:J

.field final type:Ljava/lang/String;

.field final unique:Z


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/orm/Column;Ljava/lang/reflect/Field;)V
    .locals 2
    .param p1, "column"    # Lcom/vkcoffee/android/orm/Column;
    .param p2, "field"    # Ljava/lang/reflect/Field;

    .prologue
    const/4 v0, -0x1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput v0, p0, Lcom/vkcoffee/android/orm/Column$MetaData;->bindColumnIndex:I

    .line 50
    iput v0, p0, Lcom/vkcoffee/android/orm/Column$MetaData;->cursorColumnIndex:I

    .line 66
    invoke-interface {p1}, Lcom/vkcoffee/android/orm/Column;->value()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/orm/Column$MetaData;->name:Ljava/lang/String;

    .line 67
    invoke-interface {p1}, Lcom/vkcoffee/android/orm/Column;->nullable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/vkcoffee/android/orm/Column$MetaData;->nullable:Z

    .line 68
    invoke-interface {p1}, Lcom/vkcoffee/android/orm/Column;->unique()Z

    move-result v0

    iput-boolean v0, p0, Lcom/vkcoffee/android/orm/Column$MetaData;->unique:Z

    .line 69
    invoke-interface {p1}, Lcom/vkcoffee/android/orm/Column;->defaultValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/orm/Column$MetaData;->defaultValue:Ljava/lang/String;

    .line 70
    invoke-interface {p1}, Lcom/vkcoffee/android/orm/Column;->type()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/orm/Column$MetaData;->type:Ljava/lang/String;

    .line 71
    invoke-interface {p1}, Lcom/vkcoffee/android/orm/Column;->size()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vkcoffee/android/orm/Column$MetaData;->size:J

    .line 72
    invoke-interface {p1}, Lcom/vkcoffee/android/orm/Column;->Id()Z

    move-result v0

    iput-boolean v0, p0, Lcom/vkcoffee/android/orm/Column$MetaData;->primaryKey:Z

    .line 73
    invoke-interface {p1}, Lcom/vkcoffee/android/orm/Column;->autoincrement()Z

    move-result v0

    iput-boolean v0, p0, Lcom/vkcoffee/android/orm/Column$MetaData;->autoincrement:Z

    .line 74
    invoke-static {p2}, Lcom/vkcoffee/android/orm/FieldType;->parse(Ljava/lang/reflect/Field;)Lcom/vkcoffee/android/orm/FieldType;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/orm/Column$MetaData;->fieldType:Lcom/vkcoffee/android/orm/FieldType;

    .line 75
    return-void
.end method

.method constructor <init>(Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;JZZLjava/lang/reflect/Field;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "nullable"    # Z
    .param p3, "unique"    # Z
    .param p4, "defaultValue"    # Ljava/lang/String;
    .param p5, "type"    # Ljava/lang/String;
    .param p6, "size"    # J
    .param p8, "primaryKey"    # Z
    .param p9, "autoincrement"    # Z
    .param p10, "field"    # Ljava/lang/reflect/Field;

    .prologue
    const/4 v0, -0x1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput v0, p0, Lcom/vkcoffee/android/orm/Column$MetaData;->bindColumnIndex:I

    .line 50
    iput v0, p0, Lcom/vkcoffee/android/orm/Column$MetaData;->cursorColumnIndex:I

    .line 54
    iput-object p1, p0, Lcom/vkcoffee/android/orm/Column$MetaData;->name:Ljava/lang/String;

    .line 55
    iput-boolean p2, p0, Lcom/vkcoffee/android/orm/Column$MetaData;->nullable:Z

    .line 56
    iput-boolean p3, p0, Lcom/vkcoffee/android/orm/Column$MetaData;->unique:Z

    .line 57
    iput-object p4, p0, Lcom/vkcoffee/android/orm/Column$MetaData;->defaultValue:Ljava/lang/String;

    .line 58
    iput-object p5, p0, Lcom/vkcoffee/android/orm/Column$MetaData;->type:Ljava/lang/String;

    .line 59
    iput-wide p6, p0, Lcom/vkcoffee/android/orm/Column$MetaData;->size:J

    .line 60
    iput-boolean p8, p0, Lcom/vkcoffee/android/orm/Column$MetaData;->primaryKey:Z

    .line 61
    iput-boolean p9, p0, Lcom/vkcoffee/android/orm/Column$MetaData;->autoincrement:Z

    .line 62
    invoke-static {p10}, Lcom/vkcoffee/android/orm/FieldType;->parse(Ljava/lang/reflect/Field;)Lcom/vkcoffee/android/orm/FieldType;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/orm/Column$MetaData;->fieldType:Lcom/vkcoffee/android/orm/FieldType;

    .line 63
    return-void
.end method


# virtual methods
.method public bind(ILjava/lang/reflect/Field;Landroid/database/DatabaseUtils$InsertHelper;Ljava/lang/Object;)V
    .locals 1
    .param p1, "columnId"    # I
    .param p2, "what"    # Ljava/lang/reflect/Field;
    .param p3, "to"    # Landroid/database/DatabaseUtils$InsertHelper;
    .param p4, "from"    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lcom/vkcoffee/android/orm/Column$MetaData;->fieldType:Lcom/vkcoffee/android/orm/FieldType;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/vkcoffee/android/orm/FieldType;->bind(ILjava/lang/reflect/Field;Landroid/database/DatabaseUtils$InsertHelper;Ljava/lang/Object;)V

    .line 87
    return-void
.end method

.method public bind(Ljava/lang/String;Ljava/lang/reflect/Field;Landroid/content/ContentValues;Ljava/lang/Object;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "what"    # Ljava/lang/reflect/Field;
    .param p3, "to"    # Landroid/content/ContentValues;
    .param p4, "from"    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Lcom/vkcoffee/android/orm/Column$MetaData;->fieldType:Lcom/vkcoffee/android/orm/FieldType;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/vkcoffee/android/orm/FieldType;->bind(Ljava/lang/String;Ljava/lang/reflect/Field;Landroid/content/ContentValues;Ljava/lang/Object;)V

    .line 83
    return-void
.end method

.method public getDefaultSQLType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/vkcoffee/android/orm/Column$MetaData;->fieldType:Lcom/vkcoffee/android/orm/FieldType;

    invoke-virtual {v0}, Lcom/vkcoffee/android/orm/FieldType;->getDefaultSQLType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public set(ILjava/lang/reflect/Field;Landroid/database/Cursor;Ljava/lang/Object;)V
    .locals 1
    .param p1, "columnId"    # I
    .param p2, "what"    # Ljava/lang/reflect/Field;
    .param p3, "from"    # Landroid/database/Cursor;
    .param p4, "to"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 90
    iget-object v0, p0, Lcom/vkcoffee/android/orm/Column$MetaData;->fieldType:Lcom/vkcoffee/android/orm/FieldType;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/vkcoffee/android/orm/FieldType;->set(ILjava/lang/reflect/Field;Landroid/database/Cursor;Ljava/lang/Object;)V

    .line 91
    return-void
.end method
