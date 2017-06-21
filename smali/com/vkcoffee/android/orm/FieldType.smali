.class final enum Lcom/vkcoffee/android/orm/FieldType;
.super Ljava/lang/Enum;
.source "FieldType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/vkcoffee/android/orm/FieldType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/vkcoffee/android/orm/FieldType;

.field public static final enum Array:Lcom/vkcoffee/android/orm/FieldType;

.field public static final enum Boolean:Lcom/vkcoffee/android/orm/FieldType;

.field public static final enum Byte:Lcom/vkcoffee/android/orm/FieldType;

.field public static final enum Char:Lcom/vkcoffee/android/orm/FieldType;

.field public static final enum Double:Lcom/vkcoffee/android/orm/FieldType;

.field public static final enum Enum:Lcom/vkcoffee/android/orm/FieldType;

.field public static final enum Float:Lcom/vkcoffee/android/orm/FieldType;

.field public static final enum Integer:Lcom/vkcoffee/android/orm/FieldType;

.field public static final enum JsonArray:Lcom/vkcoffee/android/orm/FieldType;

.field public static final enum JsonObject:Lcom/vkcoffee/android/orm/FieldType;

.field public static final enum List:Lcom/vkcoffee/android/orm/FieldType;

.field public static final enum Long:Lcom/vkcoffee/android/orm/FieldType;

.field public static final enum Map:Lcom/vkcoffee/android/orm/FieldType;

.field public static final enum Reference:Lcom/vkcoffee/android/orm/FieldType;

.field public static final enum Short:Lcom/vkcoffee/android/orm/FieldType;

.field public static final enum String:Lcom/vkcoffee/android/orm/FieldType;

.field public static final enum primitiveBlob:Lcom/vkcoffee/android/orm/FieldType;

.field public static final enum primitiveBoolean:Lcom/vkcoffee/android/orm/FieldType;

.field public static final enum primitiveByte:Lcom/vkcoffee/android/orm/FieldType;

.field public static final enum primitiveChar:Lcom/vkcoffee/android/orm/FieldType;

.field public static final enum primitiveDouble:Lcom/vkcoffee/android/orm/FieldType;

.field public static final enum primitiveFloat:Lcom/vkcoffee/android/orm/FieldType;

.field public static final enum primitiveInt:Lcom/vkcoffee/android/orm/FieldType;

.field public static final enum primitiveLong:Lcom/vkcoffee/android/orm/FieldType;

.field public static final enum primitiveShort:Lcom/vkcoffee/android/orm/FieldType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 28
    new-instance v0, Lcom/vkcoffee/android/orm/FieldType;

    const-string/jumbo v1, "primitiveBoolean"

    invoke-direct {v0, v1, v3}, Lcom/vkcoffee/android/orm/FieldType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vkcoffee/android/orm/FieldType;->primitiveBoolean:Lcom/vkcoffee/android/orm/FieldType;

    .line 29
    new-instance v0, Lcom/vkcoffee/android/orm/FieldType;

    const-string/jumbo v1, "primitiveByte"

    invoke-direct {v0, v1, v4}, Lcom/vkcoffee/android/orm/FieldType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vkcoffee/android/orm/FieldType;->primitiveByte:Lcom/vkcoffee/android/orm/FieldType;

    .line 30
    new-instance v0, Lcom/vkcoffee/android/orm/FieldType;

    const-string/jumbo v1, "primitiveShort"

    invoke-direct {v0, v1, v5}, Lcom/vkcoffee/android/orm/FieldType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vkcoffee/android/orm/FieldType;->primitiveShort:Lcom/vkcoffee/android/orm/FieldType;

    .line 31
    new-instance v0, Lcom/vkcoffee/android/orm/FieldType;

    const-string/jumbo v1, "primitiveChar"

    invoke-direct {v0, v1, v6}, Lcom/vkcoffee/android/orm/FieldType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vkcoffee/android/orm/FieldType;->primitiveChar:Lcom/vkcoffee/android/orm/FieldType;

    .line 32
    new-instance v0, Lcom/vkcoffee/android/orm/FieldType;

    const-string/jumbo v1, "primitiveInt"

    invoke-direct {v0, v1, v7}, Lcom/vkcoffee/android/orm/FieldType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vkcoffee/android/orm/FieldType;->primitiveInt:Lcom/vkcoffee/android/orm/FieldType;

    .line 33
    new-instance v0, Lcom/vkcoffee/android/orm/FieldType;

    const-string/jumbo v1, "primitiveLong"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/vkcoffee/android/orm/FieldType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vkcoffee/android/orm/FieldType;->primitiveLong:Lcom/vkcoffee/android/orm/FieldType;

    .line 34
    new-instance v0, Lcom/vkcoffee/android/orm/FieldType;

    const-string/jumbo v1, "primitiveFloat"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/vkcoffee/android/orm/FieldType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vkcoffee/android/orm/FieldType;->primitiveFloat:Lcom/vkcoffee/android/orm/FieldType;

    .line 35
    new-instance v0, Lcom/vkcoffee/android/orm/FieldType;

    const-string/jumbo v1, "primitiveDouble"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/vkcoffee/android/orm/FieldType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vkcoffee/android/orm/FieldType;->primitiveDouble:Lcom/vkcoffee/android/orm/FieldType;

    .line 36
    new-instance v0, Lcom/vkcoffee/android/orm/FieldType;

    const-string/jumbo v1, "primitiveBlob"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/vkcoffee/android/orm/FieldType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vkcoffee/android/orm/FieldType;->primitiveBlob:Lcom/vkcoffee/android/orm/FieldType;

    .line 38
    new-instance v0, Lcom/vkcoffee/android/orm/FieldType;

    const-string/jumbo v1, "Boolean"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/vkcoffee/android/orm/FieldType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vkcoffee/android/orm/FieldType;->Boolean:Lcom/vkcoffee/android/orm/FieldType;

    .line 39
    new-instance v0, Lcom/vkcoffee/android/orm/FieldType;

    const-string/jumbo v1, "Byte"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/vkcoffee/android/orm/FieldType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vkcoffee/android/orm/FieldType;->Byte:Lcom/vkcoffee/android/orm/FieldType;

    .line 40
    new-instance v0, Lcom/vkcoffee/android/orm/FieldType;

    const-string/jumbo v1, "Short"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/vkcoffee/android/orm/FieldType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vkcoffee/android/orm/FieldType;->Short:Lcom/vkcoffee/android/orm/FieldType;

    .line 41
    new-instance v0, Lcom/vkcoffee/android/orm/FieldType;

    const-string/jumbo v1, "Char"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/vkcoffee/android/orm/FieldType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vkcoffee/android/orm/FieldType;->Char:Lcom/vkcoffee/android/orm/FieldType;

    .line 42
    new-instance v0, Lcom/vkcoffee/android/orm/FieldType;

    const-string/jumbo v1, "Integer"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/vkcoffee/android/orm/FieldType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vkcoffee/android/orm/FieldType;->Integer:Lcom/vkcoffee/android/orm/FieldType;

    .line 43
    new-instance v0, Lcom/vkcoffee/android/orm/FieldType;

    const-string/jumbo v1, "Long"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/vkcoffee/android/orm/FieldType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vkcoffee/android/orm/FieldType;->Long:Lcom/vkcoffee/android/orm/FieldType;

    .line 44
    new-instance v0, Lcom/vkcoffee/android/orm/FieldType;

    const-string/jumbo v1, "Float"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/vkcoffee/android/orm/FieldType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vkcoffee/android/orm/FieldType;->Float:Lcom/vkcoffee/android/orm/FieldType;

    .line 45
    new-instance v0, Lcom/vkcoffee/android/orm/FieldType;

    const-string/jumbo v1, "Double"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/vkcoffee/android/orm/FieldType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vkcoffee/android/orm/FieldType;->Double:Lcom/vkcoffee/android/orm/FieldType;

    .line 47
    new-instance v0, Lcom/vkcoffee/android/orm/FieldType;

    const-string/jumbo v1, "String"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/vkcoffee/android/orm/FieldType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vkcoffee/android/orm/FieldType;->String:Lcom/vkcoffee/android/orm/FieldType;

    .line 48
    new-instance v0, Lcom/vkcoffee/android/orm/FieldType;

    const-string/jumbo v1, "Enum"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/vkcoffee/android/orm/FieldType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vkcoffee/android/orm/FieldType;->Enum:Lcom/vkcoffee/android/orm/FieldType;

    .line 49
    new-instance v0, Lcom/vkcoffee/android/orm/FieldType;

    const-string/jumbo v1, "Array"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/vkcoffee/android/orm/FieldType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vkcoffee/android/orm/FieldType;->Array:Lcom/vkcoffee/android/orm/FieldType;

    .line 50
    new-instance v0, Lcom/vkcoffee/android/orm/FieldType;

    const-string/jumbo v1, "List"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/vkcoffee/android/orm/FieldType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vkcoffee/android/orm/FieldType;->List:Lcom/vkcoffee/android/orm/FieldType;

    .line 51
    new-instance v0, Lcom/vkcoffee/android/orm/FieldType;

    const-string/jumbo v1, "Map"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/vkcoffee/android/orm/FieldType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vkcoffee/android/orm/FieldType;->Map:Lcom/vkcoffee/android/orm/FieldType;

    .line 52
    new-instance v0, Lcom/vkcoffee/android/orm/FieldType;

    const-string/jumbo v1, "JsonObject"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lcom/vkcoffee/android/orm/FieldType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vkcoffee/android/orm/FieldType;->JsonObject:Lcom/vkcoffee/android/orm/FieldType;

    .line 53
    new-instance v0, Lcom/vkcoffee/android/orm/FieldType;

    const-string/jumbo v1, "JsonArray"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lcom/vkcoffee/android/orm/FieldType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vkcoffee/android/orm/FieldType;->JsonArray:Lcom/vkcoffee/android/orm/FieldType;

    .line 56
    new-instance v0, Lcom/vkcoffee/android/orm/FieldType;

    const-string/jumbo v1, "Reference"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lcom/vkcoffee/android/orm/FieldType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vkcoffee/android/orm/FieldType;->Reference:Lcom/vkcoffee/android/orm/FieldType;

    .line 25
    const/16 v0, 0x19

    new-array v0, v0, [Lcom/vkcoffee/android/orm/FieldType;

    sget-object v1, Lcom/vkcoffee/android/orm/FieldType;->primitiveBoolean:Lcom/vkcoffee/android/orm/FieldType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/vkcoffee/android/orm/FieldType;->primitiveByte:Lcom/vkcoffee/android/orm/FieldType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/vkcoffee/android/orm/FieldType;->primitiveShort:Lcom/vkcoffee/android/orm/FieldType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/vkcoffee/android/orm/FieldType;->primitiveChar:Lcom/vkcoffee/android/orm/FieldType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/vkcoffee/android/orm/FieldType;->primitiveInt:Lcom/vkcoffee/android/orm/FieldType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/vkcoffee/android/orm/FieldType;->primitiveLong:Lcom/vkcoffee/android/orm/FieldType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/vkcoffee/android/orm/FieldType;->primitiveFloat:Lcom/vkcoffee/android/orm/FieldType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/vkcoffee/android/orm/FieldType;->primitiveDouble:Lcom/vkcoffee/android/orm/FieldType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/vkcoffee/android/orm/FieldType;->primitiveBlob:Lcom/vkcoffee/android/orm/FieldType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/vkcoffee/android/orm/FieldType;->Boolean:Lcom/vkcoffee/android/orm/FieldType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/vkcoffee/android/orm/FieldType;->Byte:Lcom/vkcoffee/android/orm/FieldType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/vkcoffee/android/orm/FieldType;->Short:Lcom/vkcoffee/android/orm/FieldType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/vkcoffee/android/orm/FieldType;->Char:Lcom/vkcoffee/android/orm/FieldType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/vkcoffee/android/orm/FieldType;->Integer:Lcom/vkcoffee/android/orm/FieldType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/vkcoffee/android/orm/FieldType;->Long:Lcom/vkcoffee/android/orm/FieldType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/vkcoffee/android/orm/FieldType;->Float:Lcom/vkcoffee/android/orm/FieldType;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/vkcoffee/android/orm/FieldType;->Double:Lcom/vkcoffee/android/orm/FieldType;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/vkcoffee/android/orm/FieldType;->String:Lcom/vkcoffee/android/orm/FieldType;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/vkcoffee/android/orm/FieldType;->Enum:Lcom/vkcoffee/android/orm/FieldType;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/vkcoffee/android/orm/FieldType;->Array:Lcom/vkcoffee/android/orm/FieldType;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/vkcoffee/android/orm/FieldType;->List:Lcom/vkcoffee/android/orm/FieldType;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/vkcoffee/android/orm/FieldType;->Map:Lcom/vkcoffee/android/orm/FieldType;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/vkcoffee/android/orm/FieldType;->JsonObject:Lcom/vkcoffee/android/orm/FieldType;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/vkcoffee/android/orm/FieldType;->JsonArray:Lcom/vkcoffee/android/orm/FieldType;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/vkcoffee/android/orm/FieldType;->Reference:Lcom/vkcoffee/android/orm/FieldType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/vkcoffee/android/orm/FieldType;->$VALUES:[Lcom/vkcoffee/android/orm/FieldType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 175
    return-void
.end method

.method static escapeJava(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "string"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 783
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/vkcoffee/android/orm/FieldType;->escapeJava(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static escapeJava(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 6
    .param p0, "sb"    # Ljava/lang/StringBuilder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/16 v5, 0x5c

    .line 794
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    .line 796
    .local v3, "sz":I
    const/4 v1, 0x0

    .local v1, "i":I
    move v2, v1

    .end local v1    # "i":I
    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 797
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    .line 799
    .local v0, "ch":C
    sparse-switch v0, :sswitch_data_0

    move v1, v2

    .line 796
    .end local v2    # "i":I
    .restart local v1    # "i":I
    :goto_1
    add-int/lit8 v1, v1, 0x1

    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_0

    .line 801
    :sswitch_0
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    invoke-virtual {p0, v2, v5}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 802
    add-int/lit8 v3, v3, 0x1

    .line 803
    const/16 v4, 0x2c

    invoke-virtual {p0, v1, v4}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 806
    .end local v1    # "i":I
    .restart local v2    # "i":I
    :sswitch_1
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    invoke-virtual {p0, v2, v5}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 807
    add-int/lit8 v3, v3, 0x1

    .line 808
    const/16 v4, 0x3d

    invoke-virtual {p0, v1, v4}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 811
    .end local v1    # "i":I
    .restart local v2    # "i":I
    :sswitch_2
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    invoke-virtual {p0, v2, v5}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 812
    add-int/lit8 v3, v3, 0x1

    .line 813
    invoke-virtual {p0, v1, v5}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 817
    .end local v0    # "ch":C
    .end local v1    # "i":I
    .restart local v2    # "i":I
    :cond_0
    return-object p0

    .line 799
    :sswitch_data_0
    .sparse-switch
        0x2c -> :sswitch_0
        0x3d -> :sswitch_1
        0x5c -> :sswitch_2
    .end sparse-switch
.end method

.method static parse(Ljava/lang/Class;)Lcom/vkcoffee/android/orm/FieldType;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/vkcoffee/android/orm/FieldType;"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 60
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    sget-object v0, Lcom/vkcoffee/android/orm/FieldType;->primitiveBoolean:Lcom/vkcoffee/android/orm/FieldType;

    .line 136
    :goto_0
    return-object v0

    .line 63
    :cond_0
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    sget-object v0, Lcom/vkcoffee/android/orm/FieldType;->primitiveByte:Lcom/vkcoffee/android/orm/FieldType;

    goto :goto_0

    .line 66
    :cond_1
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 67
    sget-object v0, Lcom/vkcoffee/android/orm/FieldType;->primitiveShort:Lcom/vkcoffee/android/orm/FieldType;

    goto :goto_0

    .line 69
    :cond_2
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 70
    sget-object v0, Lcom/vkcoffee/android/orm/FieldType;->primitiveChar:Lcom/vkcoffee/android/orm/FieldType;

    goto :goto_0

    .line 72
    :cond_3
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 73
    sget-object v0, Lcom/vkcoffee/android/orm/FieldType;->primitiveInt:Lcom/vkcoffee/android/orm/FieldType;

    goto :goto_0

    .line 75
    :cond_4
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 76
    sget-object v0, Lcom/vkcoffee/android/orm/FieldType;->primitiveLong:Lcom/vkcoffee/android/orm/FieldType;

    goto :goto_0

    .line 78
    :cond_5
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 79
    sget-object v0, Lcom/vkcoffee/android/orm/FieldType;->primitiveFloat:Lcom/vkcoffee/android/orm/FieldType;

    goto :goto_0

    .line 81
    :cond_6
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 82
    sget-object v0, Lcom/vkcoffee/android/orm/FieldType;->primitiveDouble:Lcom/vkcoffee/android/orm/FieldType;

    goto :goto_0

    .line 84
    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Expected primitive class, handle +"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_8
    const-class v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const-class v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 87
    :cond_9
    sget-object v0, Lcom/vkcoffee/android/orm/FieldType;->String:Lcom/vkcoffee/android/orm/FieldType;

    goto :goto_0

    .line 89
    :cond_a
    const-class v0, [B

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 90
    sget-object v0, Lcom/vkcoffee/android/orm/FieldType;->primitiveBlob:Lcom/vkcoffee/android/orm/FieldType;

    goto/16 :goto_0

    .line 92
    :cond_b
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 93
    sget-object v0, Lcom/vkcoffee/android/orm/FieldType;->Array:Lcom/vkcoffee/android/orm/FieldType;

    goto/16 :goto_0

    .line 95
    :cond_c
    invoke-virtual {p0}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 96
    sget-object v0, Lcom/vkcoffee/android/orm/FieldType;->Enum:Lcom/vkcoffee/android/orm/FieldType;

    goto/16 :goto_0

    .line 99
    :cond_d
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 100
    sget-object v0, Lcom/vkcoffee/android/orm/FieldType;->Boolean:Lcom/vkcoffee/android/orm/FieldType;

    goto/16 :goto_0

    .line 102
    :cond_e
    const-class v0, Ljava/lang/Byte;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 103
    sget-object v0, Lcom/vkcoffee/android/orm/FieldType;->Byte:Lcom/vkcoffee/android/orm/FieldType;

    goto/16 :goto_0

    .line 105
    :cond_f
    const-class v0, Ljava/lang/Short;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 106
    sget-object v0, Lcom/vkcoffee/android/orm/FieldType;->Short:Lcom/vkcoffee/android/orm/FieldType;

    goto/16 :goto_0

    .line 108
    :cond_10
    const-class v0, Ljava/lang/Character;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 109
    sget-object v0, Lcom/vkcoffee/android/orm/FieldType;->Char:Lcom/vkcoffee/android/orm/FieldType;

    goto/16 :goto_0

    .line 111
    :cond_11
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 112
    sget-object v0, Lcom/vkcoffee/android/orm/FieldType;->Integer:Lcom/vkcoffee/android/orm/FieldType;

    goto/16 :goto_0

    .line 114
    :cond_12
    const-class v0, Ljava/lang/Long;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 115
    sget-object v0, Lcom/vkcoffee/android/orm/FieldType;->Long:Lcom/vkcoffee/android/orm/FieldType;

    goto/16 :goto_0

    .line 117
    :cond_13
    const-class v0, Ljava/lang/Float;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 118
    sget-object v0, Lcom/vkcoffee/android/orm/FieldType;->Float:Lcom/vkcoffee/android/orm/FieldType;

    goto/16 :goto_0

    .line 120
    :cond_14
    const-class v0, Ljava/lang/Double;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 121
    sget-object v0, Lcom/vkcoffee/android/orm/FieldType;->Double:Lcom/vkcoffee/android/orm/FieldType;

    goto/16 :goto_0

    .line 123
    :cond_15
    const-class v0, Lorg/json/JSONObject;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 124
    sget-object v0, Lcom/vkcoffee/android/orm/FieldType;->JsonObject:Lcom/vkcoffee/android/orm/FieldType;

    goto/16 :goto_0

    .line 126
    :cond_16
    const-class v0, Lorg/json/JSONArray;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 127
    sget-object v0, Lcom/vkcoffee/android/orm/FieldType;->JsonArray:Lcom/vkcoffee/android/orm/FieldType;

    goto/16 :goto_0

    .line 130
    :cond_17
    const-class v0, Ljava/util/List;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    const-class v0, Ljava/util/ArrayList;

    if-ne p0, v0, :cond_19

    .line 131
    :cond_18
    sget-object v0, Lcom/vkcoffee/android/orm/FieldType;->List:Lcom/vkcoffee/android/orm/FieldType;

    goto/16 :goto_0

    .line 133
    :cond_19
    const-class v0, Ljava/util/Map;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-class v0, Ljava/util/HashMap;

    if-ne p0, v0, :cond_1b

    .line 134
    :cond_1a
    sget-object v0, Lcom/vkcoffee/android/orm/FieldType;->Map:Lcom/vkcoffee/android/orm/FieldType;

    goto/16 :goto_0

    .line 136
    :cond_1b
    sget-object v0, Lcom/vkcoffee/android/orm/FieldType;->Reference:Lcom/vkcoffee/android/orm/FieldType;

    goto/16 :goto_0
.end method

.method static parse(Ljava/lang/reflect/Field;)Lcom/vkcoffee/android/orm/FieldType;
    .locals 1
    .param p0, "field"    # Ljava/lang/reflect/Field;

    .prologue
    .line 141
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/vkcoffee/android/orm/FieldType;->parse(Ljava/lang/Class;)Lcom/vkcoffee/android/orm/FieldType;

    move-result-object v0

    return-object v0
.end method

.method static parse(Ljava/lang/String;Ljava/lang/Class;Lcom/vkcoffee/android/orm/FieldType;)Ljava/lang/Object;
    .locals 2
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "clazz"    # Ljava/lang/Class;
    .param p2, "type"    # Lcom/vkcoffee/android/orm/FieldType;

    .prologue
    .line 739
    sget-object v0, Lcom/vkcoffee/android/orm/FieldType$1;->$SwitchMap$com$vkontakte$android$orm$FieldType:[I

    invoke-virtual {p2}, Lcom/vkcoffee/android/orm/FieldType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 778
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 741
    :pswitch_1
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    .line 768
    .end local p0    # "source":Ljava/lang/String;
    :goto_0
    :pswitch_2
    return-object p0

    .line 744
    .restart local p0    # "source":Ljava/lang/String;
    :pswitch_3
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object p0

    goto :goto_0

    .line 747
    :pswitch_4
    invoke-static {p0}, Ljava/lang/Short;->valueOf(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object p0

    goto :goto_0

    .line 750
    :pswitch_5
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p0

    goto :goto_0

    .line 753
    :pswitch_6
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    .line 756
    :pswitch_7
    invoke-static {p0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    goto :goto_0

    .line 759
    :pswitch_8
    invoke-static {p0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p0

    goto :goto_0

    .line 762
    :pswitch_9
    invoke-static {p0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p0

    goto :goto_0

    .line 768
    :pswitch_a
    invoke-static {p1, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    goto :goto_0

    .line 739
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_2
        :pswitch_a
    .end packed-switch
.end method

.method static parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 6
    .param p0, "data"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .local p1, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v5, 0x0

    .line 557
    if-nez p0, :cond_1

    .line 558
    const/4 v0, 0x0

    .line 685
    :cond_0
    :goto_0
    return-object v0

    .line 560
    :cond_1
    const-string/jumbo v3, ","

    invoke-static {p0, v3}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 562
    .local v2, "sourceArray":[Ljava/lang/String;
    sget-object v3, Lcom/vkcoffee/android/orm/FieldType$1;->$SwitchMap$com$vkontakte$android$orm$FieldType:[I

    invoke-static {p1}, Lcom/vkcoffee/android/orm/FieldType;->parse(Ljava/lang/Class;)Lcom/vkcoffee/android/orm/FieldType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vkcoffee/android/orm/FieldType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 693
    :pswitch_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Deserialization for array of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " is not supported"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/vkcoffee/android/orm/ORM;->logE(Ljava/lang/String;)V

    .line 696
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 564
    :pswitch_1
    array-length v3, v2

    new-array v0, v3, [Z

    .line 565
    .local v0, "array":[Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 566
    aget-object v3, v2, v1

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    aput-boolean v3, v0, v1

    .line 565
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 571
    .end local v0    # "array":[Z
    .end local v1    # "i":I
    :pswitch_2
    array-length v3, v2

    new-array v0, v3, [Ljava/lang/Boolean;

    .line 572
    .local v0, "array":[Ljava/lang/Boolean;
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 573
    aget-object v3, v2, v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v0, v1

    .line 572
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 578
    .end local v0    # "array":[Ljava/lang/Boolean;
    .end local v1    # "i":I
    :pswitch_3
    array-length v3, v2

    new-array v0, v3, [B

    .line 579
    .local v0, "array":[B
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 580
    aget-object v3, v2, v1

    invoke-static {v3}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v3

    aput-byte v3, v0, v1

    .line 579
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 585
    .end local v0    # "array":[B
    .end local v1    # "i":I
    :pswitch_4
    array-length v3, v2

    new-array v0, v3, [Ljava/lang/Byte;

    .line 586
    .local v0, "array":[Ljava/lang/Byte;
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_4
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 587
    aget-object v3, v2, v1

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v0, v1

    .line 586
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 592
    .end local v0    # "array":[Ljava/lang/Byte;
    .end local v1    # "i":I
    :pswitch_5
    array-length v3, v2

    new-array v0, v3, [S

    .line 593
    .local v0, "array":[S
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_5
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 594
    aget-object v3, v2, v1

    invoke-static {v3}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v3

    aput-short v3, v0, v1

    .line 593
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 599
    .end local v0    # "array":[S
    .end local v1    # "i":I
    :pswitch_6
    array-length v3, v2

    new-array v0, v3, [Ljava/lang/Short;

    .line 600
    .local v0, "array":[Ljava/lang/Short;
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_6
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 601
    aget-object v3, v2, v1

    invoke-static {v3}, Ljava/lang/Short;->valueOf(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object v3

    aput-object v3, v0, v1

    .line 600
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 606
    .end local v0    # "array":[Ljava/lang/Short;
    .end local v1    # "i":I
    :pswitch_7
    array-length v3, v2

    new-array v0, v3, [C

    .line 607
    .local v0, "array":[C
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_7
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 608
    aget-object v3, v2, v1

    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    aput-char v3, v0, v1

    .line 607
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 613
    .end local v0    # "array":[C
    .end local v1    # "i":I
    :pswitch_8
    array-length v3, v2

    new-array v0, v3, [Ljava/lang/Character;

    .line 614
    .local v0, "array":[Ljava/lang/Character;
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_8
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 615
    aget-object v3, v2, v1

    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    aput-object v3, v0, v1

    .line 614
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 620
    .end local v0    # "array":[Ljava/lang/Character;
    .end local v1    # "i":I
    :pswitch_9
    array-length v3, v2

    new-array v0, v3, [I

    .line 621
    .local v0, "array":[I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_9
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 622
    aget-object v3, v2, v1

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v0, v1

    .line 621
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 627
    .end local v0    # "array":[I
    .end local v1    # "i":I
    :pswitch_a
    array-length v3, v2

    new-array v0, v3, [Ljava/lang/Integer;

    .line 628
    .local v0, "array":[Ljava/lang/Integer;
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_a
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 629
    aget-object v3, v2, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    .line 628
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 634
    .end local v0    # "array":[Ljava/lang/Integer;
    .end local v1    # "i":I
    :pswitch_b
    array-length v3, v2

    new-array v0, v3, [J

    .line 635
    .local v0, "array":[J
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_b
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 636
    aget-object v3, v2, v1

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    aput-wide v4, v0, v1

    .line 635
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 641
    .end local v0    # "array":[J
    .end local v1    # "i":I
    :pswitch_c
    array-length v3, v2

    new-array v0, v3, [Ljava/lang/Long;

    .line 642
    .local v0, "array":[Ljava/lang/Long;
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_c
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 643
    aget-object v3, v2, v1

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v0, v1

    .line 642
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 648
    .end local v0    # "array":[Ljava/lang/Long;
    .end local v1    # "i":I
    :pswitch_d
    array-length v3, v2

    new-array v0, v3, [F

    .line 649
    .local v0, "array":[F
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_d
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 650
    aget-object v3, v2, v1

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    aput v3, v0, v1

    .line 649
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 655
    .end local v0    # "array":[F
    .end local v1    # "i":I
    :pswitch_e
    array-length v3, v2

    new-array v0, v3, [Ljava/lang/Float;

    .line 656
    .local v0, "array":[Ljava/lang/Float;
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_e
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 657
    aget-object v3, v2, v1

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v0, v1

    .line 656
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 662
    .end local v0    # "array":[Ljava/lang/Float;
    .end local v1    # "i":I
    :pswitch_f
    array-length v3, v2

    new-array v0, v3, [D

    .line 663
    .local v0, "array":[D
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_f
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 664
    aget-object v3, v2, v1

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    aput-wide v4, v0, v1

    .line 663
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 669
    .end local v0    # "array":[D
    .end local v1    # "i":I
    :pswitch_10
    array-length v3, v2

    new-array v0, v3, [Ljava/lang/Double;

    .line 670
    .local v0, "array":[Ljava/lang/Double;
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_10
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 671
    aget-object v3, v2, v1

    invoke-static {v3}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v0, v1

    .line 670
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 676
    .end local v0    # "array":[Ljava/lang/Double;
    .end local v1    # "i":I
    :pswitch_11
    array-length v3, v2

    invoke-static {p1, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    move-object v0, v3

    check-cast v0, [Ljava/lang/Object;

    .line 677
    .local v0, "array":[Ljava/lang/Object;
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_11
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 678
    aget-object v3, v2, v1

    invoke-static {p1, v3}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v3

    aput-object v3, v0, v1

    .line 677
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 682
    .end local v0    # "array":[Ljava/lang/Object;
    .end local v1    # "i":I
    :pswitch_12
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_12
    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 683
    aget-object v3, v2, v1

    invoke-static {v3}, Lcom/vkcoffee/android/orm/FieldType;->unescapeJava(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 682
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_2
    move-object v0, v2

    .line 685
    goto/16 :goto_0

    .line 562
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_0
        :pswitch_12
        :pswitch_11
    .end packed-switch
.end method

.method static parseList(Ljava/lang/String;Ljava/lang/Class;Lcom/vkcoffee/android/orm/FieldType;)Ljava/util/ArrayList;
    .locals 6
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "genericType"    # Ljava/lang/Class;
    .param p2, "type"    # Lcom/vkcoffee/android/orm/FieldType;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 702
    if-nez p0, :cond_1

    .line 703
    const/4 v0, 0x0

    .line 713
    :cond_0
    return-object v0

    .line 705
    :cond_1
    const-string/jumbo v3, "(?<!\\\\),"

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 707
    .local v2, "sourceArray":[Ljava/lang/String;
    new-instance v0, Ljava/util/ArrayList;

    array-length v3, v2

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 709
    .local v0, "result":Ljava/util/ArrayList;
    array-length v4, v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v2, v3

    .line 710
    .local v1, "source":Ljava/lang/String;
    invoke-static {v1}, Lcom/vkcoffee/android/orm/FieldType;->unescapeJava(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p1, p2}, Lcom/vkcoffee/android/orm/FieldType;->parse(Ljava/lang/String;Ljava/lang/Class;Lcom/vkcoffee/android/orm/FieldType;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 709
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method static parseMap(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/vkcoffee/android/orm/FieldType;Lcom/vkcoffee/android/orm/FieldType;)Ljava/util/HashMap;
    .locals 10
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "keyClass"    # Ljava/lang/Class;
    .param p2, "valueClass"    # Ljava/lang/Class;
    .param p3, "keyType"    # Lcom/vkcoffee/android/orm/FieldType;
    .param p4, "valueType"    # Lcom/vkcoffee/android/orm/FieldType;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 719
    if-nez p0, :cond_1

    .line 720
    const/4 v2, 0x0

    .line 735
    :cond_0
    return-object v2

    .line 722
    :cond_1
    const-string/jumbo v6, "(?<!\\\\),"

    invoke-virtual {p0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 724
    .local v4, "sourceArray":[Ljava/lang/String;
    new-instance v2, Ljava/util/HashMap;

    array-length v6, v4

    invoke-direct {v2, v6}, Ljava/util/HashMap;-><init>(I)V

    .line 726
    .local v2, "result":Ljava/util/HashMap;
    array-length v8, v4

    move v6, v7

    :goto_0
    if-ge v6, v8, :cond_0

    aget-object v3, v4, v6

    .line 727
    .local v3, "source":Ljava/lang/String;
    const-string/jumbo v9, "(?<!\\\\)="

    invoke-virtual {v3, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 729
    .local v0, "entry":[Ljava/lang/String;
    aget-object v9, v0, v7

    invoke-static {v9}, Lcom/vkcoffee/android/orm/FieldType;->unescapeJava(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, p1, p3}, Lcom/vkcoffee/android/orm/FieldType;->parse(Ljava/lang/String;Ljava/lang/Class;Lcom/vkcoffee/android/orm/FieldType;)Ljava/lang/Object;

    move-result-object v1

    .line 730
    .local v1, "key":Ljava/lang/Object;
    const/4 v9, 0x1

    aget-object v9, v0, v9

    invoke-static {v9}, Lcom/vkcoffee/android/orm/FieldType;->unescapeJava(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, p1, p4}, Lcom/vkcoffee/android/orm/FieldType;->parse(Ljava/lang/String;Ljava/lang/Class;Lcom/vkcoffee/android/orm/FieldType;)Ljava/lang/Object;

    move-result-object v5

    .line 732
    .local v5, "value":Ljava/lang/Object;
    invoke-virtual {v2, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 726
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method

.method static serializeArray(Ljava/lang/Object;Lcom/vkcoffee/android/orm/FieldType;)Ljava/lang/String;
    .locals 6
    .param p0, "array"    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "type"    # Lcom/vkcoffee/android/orm/FieldType;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 445
    if-nez p0, :cond_0

    .line 446
    const/4 v3, 0x0

    .line 508
    :goto_0
    return-object v3

    .line 448
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 449
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    .line 450
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 451
    if-lez v0, :cond_1

    .line 452
    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 454
    :cond_1
    sget-object v3, Lcom/vkcoffee/android/orm/FieldType$1;->$SwitchMap$com$vkontakte$android$orm$FieldType:[I

    invoke-virtual {p1}, Lcom/vkcoffee/android/orm/FieldType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 504
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Serialization for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " is not supported"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/vkcoffee/android/orm/ORM;->logE(Ljava/lang/String;)V

    .line 450
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :pswitch_0
    move-object v3, p0

    .line 456
    check-cast v3, [Z

    check-cast v3, [Z

    aget-boolean v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto :goto_2

    :pswitch_1
    move-object v3, p0

    .line 459
    check-cast v3, [B

    check-cast v3, [B

    aget-byte v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_2

    :pswitch_2
    move-object v3, p0

    .line 462
    check-cast v3, [S

    check-cast v3, [S

    aget-short v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_2

    :pswitch_3
    move-object v3, p0

    .line 465
    check-cast v3, [C

    check-cast v3, [C

    aget-char v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :pswitch_4
    move-object v3, p0

    .line 468
    check-cast v3, [I

    check-cast v3, [I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_2

    :pswitch_5
    move-object v3, p0

    .line 471
    check-cast v3, [J

    check-cast v3, [J

    aget-wide v4, v3, v0

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_2

    :pswitch_6
    move-object v3, p0

    .line 474
    check-cast v3, [F

    check-cast v3, [F

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    goto :goto_2

    :pswitch_7
    move-object v3, p0

    .line 477
    check-cast v3, [D

    check-cast v3, [D

    aget-wide v4, v3, v0

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    goto :goto_2

    :pswitch_8
    move-object v3, p0

    .line 487
    check-cast v3, [Ljava/lang/Object;

    check-cast v3, [Ljava/lang/Object;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2

    :pswitch_9
    move-object v3, p0

    .line 490
    check-cast v3, [Ljava/lang/Object;

    check-cast v3, [Ljava/lang/Object;

    aget-object v3, v3, v0

    check-cast v3, Ljava/lang/Enum;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :pswitch_a
    move-object v3, p0

    .line 494
    check-cast v3, [Ljava/lang/Object;

    check-cast v3, [Ljava/lang/Object;

    aget-object v3, v3, v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/vkcoffee/android/orm/FieldType;->escapeJava(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 508
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 454
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_8
        :pswitch_1
        :pswitch_8
        :pswitch_2
        :pswitch_8
        :pswitch_3
        :pswitch_8
        :pswitch_4
        :pswitch_8
        :pswitch_5
        :pswitch_8
        :pswitch_6
        :pswitch_8
        :pswitch_7
        :pswitch_8
        :pswitch_a
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method

.method static serializeList(Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .param p0    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 538
    .local p0, "collection":Ljava/util/List;, "Ljava/util/List<*>;"
    if-nez p0, :cond_0

    .line 539
    const/4 v3, 0x0

    .line 552
    :goto_0
    return-object v3

    .line 541
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 542
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 544
    .local v1, "firstTime":Z
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 545
    .local v0, "entry":Ljava/lang/Object;
    if-eqz v1, :cond_1

    .line 546
    const/4 v1, 0x0

    .line 550
    :goto_2
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/vkcoffee/android/orm/FieldType;->escapeJava(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 548
    :cond_1
    const/16 v4, 0x2c

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 552
    .end local v0    # "entry":Ljava/lang/Object;
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method static serializeMap(Ljava/util/Map;)Ljava/lang/String;
    .locals 7
    .param p0    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 513
    .local p0, "object":Ljava/util/Map;, "Ljava/util/Map<**>;"
    if-nez p0, :cond_0

    .line 514
    const/4 v5, 0x0

    .line 533
    :goto_0
    return-object v5

    .line 516
    :cond_0
    const/4 v1, 0x1

    .line 517
    .local v1, "firstTime":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 519
    .local v3, "sb":Ljava/lang/StringBuilder;
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 520
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 521
    .local v2, "key":Ljava/lang/Object;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 523
    .local v4, "value":Ljava/lang/Object;
    if-eqz v1, :cond_1

    .line 524
    const/4 v1, 0x0

    .line 529
    :goto_2
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/vkcoffee/android/orm/FieldType;->escapeJava(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 530
    const/16 v6, 0x3d

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 531
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/vkcoffee/android/orm/FieldType;->escapeJava(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 526
    :cond_1
    const/16 v6, 0x2c

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 533
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .end local v2    # "key":Ljava/lang/Object;
    .end local v4    # "value":Ljava/lang/Object;
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method static unescapeJava(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "string"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 788
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/vkcoffee/android/orm/FieldType;->unescapeJava(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static unescapeJava(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 6
    .param p0, "sb"    # Ljava/lang/StringBuilder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/16 v5, 0x5c

    .line 828
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    .line 829
    .local v3, "sz":I
    const/4 v1, 0x0

    .line 830
    .local v1, "hadSlash":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 831
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    .line 832
    .local v0, "ch":C
    if-eqz v1, :cond_1

    .line 833
    const/4 v1, 0x0

    .line 834
    sparse-switch v0, :sswitch_data_0

    .line 830
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 836
    :sswitch_0
    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 837
    add-int/lit8 v3, v3, -0x1

    .line 838
    const/16 v4, 0x2c

    invoke-virtual {p0, v2, v4}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    goto :goto_1

    .line 841
    :sswitch_1
    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 842
    add-int/lit8 v3, v3, -0x1

    .line 843
    const/16 v4, 0x3d

    invoke-virtual {p0, v2, v4}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    goto :goto_1

    .line 846
    :sswitch_2
    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 847
    add-int/lit8 v3, v3, -0x1

    .line 848
    invoke-virtual {p0, v2, v5}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    goto :goto_1

    .line 852
    :cond_1
    if-ne v0, v5, :cond_0

    .line 853
    const/4 v1, 0x1

    .line 854
    goto :goto_1

    .line 857
    .end local v0    # "ch":C
    :cond_2
    if-eqz v1, :cond_3

    .line 860
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 862
    :cond_3
    return-object p0

    .line 834
    :sswitch_data_0
    .sparse-switch
        0x2c -> :sswitch_0
        0x3d -> :sswitch_1
        0x5c -> :sswitch_2
    .end sparse-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vkcoffee/android/orm/FieldType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 25
    const-class v0, Lcom/vkcoffee/android/orm/FieldType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/orm/FieldType;

    return-object v0
.end method

.method public static values()[Lcom/vkcoffee/android/orm/FieldType;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/vkcoffee/android/orm/FieldType;->$VALUES:[Lcom/vkcoffee/android/orm/FieldType;

    invoke-virtual {v0}, [Lcom/vkcoffee/android/orm/FieldType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vkcoffee/android/orm/FieldType;

    return-object v0
.end method


# virtual methods
.method bind(ILjava/lang/reflect/Field;Landroid/database/DatabaseUtils$InsertHelper;Ljava/lang/Object;)V
    .locals 8
    .param p1, "columnIndex"    # I
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
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 247
    sget-object v6, Lcom/vkcoffee/android/orm/FieldType$1;->$SwitchMap$com$vkontakte$android$orm$FieldType:[I

    invoke-virtual {p0}, Lcom/vkcoffee/android/orm/FieldType;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 327
    :goto_0
    return-void

    .line 249
    :pswitch_0
    invoke-virtual {p2, p4}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    :goto_1
    invoke-virtual {p3, p1, v3}, Landroid/database/DatabaseUtils$InsertHelper;->bind(II)V

    goto :goto_0

    :cond_0
    move v3, v5

    goto :goto_1

    .line 252
    :pswitch_1
    invoke-virtual {p2, p4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_2
    invoke-virtual {p3, p1, v4}, Landroid/database/DatabaseUtils$InsertHelper;->bind(II)V

    goto :goto_0

    :cond_1
    move v4, v5

    goto :goto_2

    .line 255
    :pswitch_2
    invoke-virtual {p2, p4}, Ljava/lang/reflect/Field;->getByte(Ljava/lang/Object;)B

    move-result v3

    invoke-virtual {p3, p1, v3}, Landroid/database/DatabaseUtils$InsertHelper;->bind(II)V

    goto :goto_0

    .line 258
    :pswitch_3
    invoke-virtual {p2, p4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Byte;

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    invoke-virtual {p3, p1, v3}, Landroid/database/DatabaseUtils$InsertHelper;->bind(II)V

    goto :goto_0

    .line 261
    :pswitch_4
    invoke-virtual {p2, p4}, Ljava/lang/reflect/Field;->getChar(Ljava/lang/Object;)C

    move-result v3

    invoke-virtual {p3, p1, v3}, Landroid/database/DatabaseUtils$InsertHelper;->bind(II)V

    goto :goto_0

    .line 264
    :pswitch_5
    invoke-virtual {p2, p4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Character;

    invoke-virtual {v3}, Ljava/lang/Character;->charValue()C

    move-result v3

    invoke-virtual {p3, p1, v3}, Landroid/database/DatabaseUtils$InsertHelper;->bind(II)V

    goto :goto_0

    .line 267
    :pswitch_6
    invoke-virtual {p2, p4}, Ljava/lang/reflect/Field;->getShort(Ljava/lang/Object;)S

    move-result v3

    invoke-virtual {p3, p1, v3}, Landroid/database/DatabaseUtils$InsertHelper;->bind(II)V

    goto :goto_0

    .line 270
    :pswitch_7
    invoke-virtual {p2, p4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Short;

    invoke-virtual {v3}, Ljava/lang/Short;->shortValue()S

    move-result v3

    invoke-virtual {p3, p1, v3}, Landroid/database/DatabaseUtils$InsertHelper;->bind(II)V

    goto :goto_0

    .line 273
    :pswitch_8
    invoke-virtual {p2, p4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {p3, p1, v3}, Landroid/database/DatabaseUtils$InsertHelper;->bind(II)V

    goto :goto_0

    .line 276
    :pswitch_9
    invoke-virtual {p2, p4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p3, p1, v3}, Landroid/database/DatabaseUtils$InsertHelper;->bind(II)V

    goto :goto_0

    .line 279
    :pswitch_a
    invoke-virtual {p2, p4}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v4

    invoke-virtual {p3, p1, v4, v5}, Landroid/database/DatabaseUtils$InsertHelper;->bind(IJ)V

    goto :goto_0

    .line 282
    :pswitch_b
    invoke-virtual {p2, p4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p3, p1, v4, v5}, Landroid/database/DatabaseUtils$InsertHelper;->bind(IJ)V

    goto/16 :goto_0

    .line 285
    :pswitch_c
    invoke-virtual {p2, p4}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v3

    invoke-virtual {p3, p1, v3}, Landroid/database/DatabaseUtils$InsertHelper;->bind(IF)V

    goto/16 :goto_0

    .line 288
    :pswitch_d
    invoke-virtual {p2, p4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {p3, p1, v3}, Landroid/database/DatabaseUtils$InsertHelper;->bind(IF)V

    goto/16 :goto_0

    .line 291
    :pswitch_e
    invoke-virtual {p2, p4}, Ljava/lang/reflect/Field;->getDouble(Ljava/lang/Object;)D

    move-result-wide v4

    invoke-virtual {p3, p1, v4, v5}, Landroid/database/DatabaseUtils$InsertHelper;->bind(ID)V

    goto/16 :goto_0

    .line 294
    :pswitch_f
    invoke-virtual {p2, p4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {p3, p1, v4, v5}, Landroid/database/DatabaseUtils$InsertHelper;->bind(ID)V

    goto/16 :goto_0

    .line 297
    :pswitch_10
    invoke-virtual {p2, p4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    check-cast v3, [B

    invoke-virtual {p3, p1, v3}, Landroid/database/DatabaseUtils$InsertHelper;->bind(I[B)V

    goto/16 :goto_0

    .line 300
    :pswitch_11
    invoke-virtual {p2, p4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 301
    .local v1, "array":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lcom/vkcoffee/android/orm/FieldType;->parse(Ljava/lang/Class;)Lcom/vkcoffee/android/orm/FieldType;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/vkcoffee/android/orm/FieldType;->serializeArray(Ljava/lang/Object;Lcom/vkcoffee/android/orm/FieldType;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, p1, v3}, Landroid/database/DatabaseUtils$InsertHelper;->bind(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 304
    .end local v1    # "array":Ljava/lang/Object;
    :pswitch_12
    invoke-virtual {p2, p4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/vkcoffee/android/orm/FieldType;->serializeList(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, p1, v3}, Landroid/database/DatabaseUtils$InsertHelper;->bind(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 307
    :pswitch_13
    invoke-virtual {p2, p4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    invoke-static {v3}, Lcom/vkcoffee/android/orm/FieldType;->serializeMap(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, p1, v3}, Landroid/database/DatabaseUtils$InsertHelper;->bind(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 310
    :pswitch_14
    invoke-virtual {p2, p4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Enum;

    .line 311
    .local v0, "anEnum":Ljava/lang/Enum;
    if-nez v0, :cond_2

    :goto_3
    invoke-virtual {p3, p1, v3}, Landroid/database/DatabaseUtils$InsertHelper;->bind(ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    .line 318
    .end local v0    # "anEnum":Ljava/lang/Enum;
    :pswitch_15
    invoke-virtual {p2, p4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 319
    .local v2, "value":Ljava/lang/Object;
    if-nez v2, :cond_3

    :goto_4
    invoke-virtual {p3, p1, v3}, Landroid/database/DatabaseUtils$InsertHelper;->bind(ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    .line 247
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_7
        :pswitch_4
        :pswitch_5
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_15
        :pswitch_15
        :pswitch_14
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_15
        :pswitch_15
        :pswitch_10
    .end packed-switch
.end method

.method bind(Ljava/lang/String;Ljava/lang/reflect/Field;Landroid/content/ContentValues;Ljava/lang/Object;)V
    .locals 5
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
    const/4 v3, 0x0

    .line 181
    sget-object v2, Lcom/vkcoffee/android/orm/FieldType$1;->$SwitchMap$com$vkontakte$android$orm$FieldType:[I

    invoke-virtual {p0}, Lcom/vkcoffee/android/orm/FieldType;->ordinal()I

    move-result v4

    aget v2, v2, v4

    packed-switch v2, :pswitch_data_0

    .line 244
    :goto_0
    return-void

    .line 184
    :pswitch_0
    invoke-virtual {p2, p4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {p3, p1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_0

    .line 188
    :pswitch_1
    invoke-virtual {p2, p4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {p3, p1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Byte;)V

    goto :goto_0

    .line 192
    :pswitch_2
    invoke-virtual {p2, p4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Character;

    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p3, p1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 196
    :pswitch_3
    invoke-virtual {p2, p4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Short;

    invoke-virtual {p3, p1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Short;)V

    goto :goto_0

    .line 200
    :pswitch_4
    invoke-virtual {p2, p4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {p3, p1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 204
    :pswitch_5
    invoke-virtual {p2, p4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {p3, p1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0

    .line 208
    :pswitch_6
    invoke-virtual {p2, p4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {p3, p1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    goto :goto_0

    .line 212
    :pswitch_7
    invoke-virtual {p2, p4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {p3, p1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    goto :goto_0

    .line 215
    :pswitch_8
    invoke-virtual {p2, p4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    check-cast v2, [B

    invoke-virtual {p3, p1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto :goto_0

    .line 218
    :pswitch_9
    invoke-virtual {p2, p4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lcom/vkcoffee/android/orm/FieldType;->parse(Ljava/lang/Class;)Lcom/vkcoffee/android/orm/FieldType;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vkcoffee/android/orm/FieldType;->serializeArray(Ljava/lang/Object;Lcom/vkcoffee/android/orm/FieldType;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, p1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 221
    :pswitch_a
    invoke-virtual {p2, p4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lcom/vkcoffee/android/orm/FieldType;->serializeList(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, p1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 224
    :pswitch_b
    invoke-virtual {p2, p4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-static {v2}, Lcom/vkcoffee/android/orm/FieldType;->serializeMap(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, p1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 227
    :pswitch_c
    invoke-virtual {p2, p4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Enum;

    move-object v0, v2

    check-cast v0, Ljava/lang/Enum;

    .line 228
    .local v0, "anEnum":Ljava/lang/Enum;
    if-nez v0, :cond_0

    move-object v2, v3

    :goto_1
    invoke-virtual {p3, p1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 235
    .end local v0    # "anEnum":Ljava/lang/Enum;
    :pswitch_d
    invoke-virtual {p2, p4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 236
    .local v1, "value":Ljava/lang/Object;
    if-nez v1, :cond_1

    :goto_2
    invoke-virtual {p3, p1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 181
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_d
        :pswitch_d
        :pswitch_c
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_d
        :pswitch_d
        :pswitch_8
    .end packed-switch
.end method

.method getDefaultSQLType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 145
    sget-object v0, Lcom/vkcoffee/android/orm/FieldType$1;->$SwitchMap$com$vkontakte$android$orm$FieldType:[I

    invoke-virtual {p0}, Lcom/vkcoffee/android/orm/FieldType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 177
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Unknown field type!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :pswitch_0
    const-string/jumbo v0, "INTEGER"

    .line 175
    :goto_0
    return-object v0

    .line 163
    :pswitch_1
    const-string/jumbo v0, "REAL"

    goto :goto_0

    .line 173
    :pswitch_2
    const-string/jumbo v0, "TEXT"

    goto :goto_0

    .line 175
    :pswitch_3
    const-string/jumbo v0, "BLOB"

    goto :goto_0

    .line 145
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method set(ILjava/lang/reflect/Field;Landroid/database/Cursor;Ljava/lang/Object;)V
    .locals 14
    .param p1, "columnIndex"    # I
    .param p2, "what"    # Ljava/lang/reflect/Field;
    .param p3, "from"    # Landroid/database/Cursor;
    .param p4, "to"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 331
    sget-object v11, Lcom/vkcoffee/android/orm/FieldType$1;->$SwitchMap$com$vkontakte$android$orm$FieldType:[I

    invoke-virtual {p0}, Lcom/vkcoffee/android/orm/FieldType;->ordinal()I

    move-result v12

    aget v11, v11, v12

    packed-switch v11, :pswitch_data_0

    .line 433
    :goto_0
    return-void

    .line 333
    :pswitch_0
    move-object/from16 v0, p3

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_0

    const/4 v11, 0x1

    :goto_1
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v11}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V

    goto :goto_0

    :cond_0
    const/4 v11, 0x0

    goto :goto_1

    .line 336
    :pswitch_1
    move-object/from16 v0, p3

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_1

    const/4 v11, 0x1

    :goto_2
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v11}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/4 v11, 0x0

    goto :goto_2

    .line 339
    :pswitch_2
    move-object/from16 v0, p3

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    int-to-byte v11, v11

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v11}, Ljava/lang/reflect/Field;->setByte(Ljava/lang/Object;B)V

    goto :goto_0

    .line 342
    :pswitch_3
    move-object/from16 v0, p3

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    int-to-byte v11, v11

    invoke-static {v11}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v11

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v11}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 345
    :pswitch_4
    move-object/from16 v0, p3

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    int-to-char v11, v11

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v11}, Ljava/lang/reflect/Field;->setChar(Ljava/lang/Object;C)V

    goto :goto_0

    .line 348
    :pswitch_5
    move-object/from16 v0, p3

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    int-to-char v11, v11

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v11}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 351
    :pswitch_6
    move-object/from16 v0, p3

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    int-to-short v11, v11

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v11}, Ljava/lang/reflect/Field;->setShort(Ljava/lang/Object;S)V

    goto :goto_0

    .line 354
    :pswitch_7
    move-object/from16 v0, p3

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    int-to-short v11, v11

    invoke-static {v11}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v11

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v11}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 357
    :pswitch_8
    move-object/from16 v0, p3

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v11}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 360
    :pswitch_9
    move-object/from16 v0, p3

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v11}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 363
    :pswitch_a
    move-object/from16 v0, p3

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v12, v13}, Ljava/lang/reflect/Field;->setLong(Ljava/lang/Object;J)V

    goto/16 :goto_0

    .line 366
    :pswitch_b
    move-object/from16 v0, p3

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v11}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 369
    :pswitch_c
    move-object/from16 v0, p3

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v11

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v11}, Ljava/lang/reflect/Field;->setFloat(Ljava/lang/Object;F)V

    goto/16 :goto_0

    .line 372
    :pswitch_d
    move-object/from16 v0, p3

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v11

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v11}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 375
    :pswitch_e
    move-object/from16 v0, p3

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v12

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v12, v13}, Ljava/lang/reflect/Field;->setDouble(Ljava/lang/Object;D)V

    goto/16 :goto_0

    .line 378
    :pswitch_f
    move-object/from16 v0, p3

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v11}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 381
    :pswitch_10
    move-object/from16 v0, p3

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v11

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v11}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 384
    :pswitch_11
    move-object/from16 v0, p3

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/vkcoffee/android/orm/FieldType;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v11

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v11}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 387
    :pswitch_12
    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v5

    check-cast v5, Ljava/lang/reflect/ParameterizedType;

    .line 388
    .local v5, "genericTypes":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v5}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v11

    const/4 v12, 0x0

    aget-object v4, v11, v12

    check-cast v4, Ljava/lang/Class;

    .line 389
    .local v4, "genericType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v0, p3

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v4}, Lcom/vkcoffee/android/orm/FieldType;->parse(Ljava/lang/Class;)Lcom/vkcoffee/android/orm/FieldType;

    move-result-object v12

    invoke-static {v11, v4, v12}, Lcom/vkcoffee/android/orm/FieldType;->parseList(Ljava/lang/String;Ljava/lang/Class;Lcom/vkcoffee/android/orm/FieldType;)Ljava/util/ArrayList;

    move-result-object v11

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v11}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 393
    .end local v4    # "genericType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "genericTypes":Ljava/lang/reflect/ParameterizedType;
    :pswitch_13
    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v5

    check-cast v5, Ljava/lang/reflect/ParameterizedType;

    .line 394
    .restart local v5    # "genericTypes":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v5}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v2

    .line 395
    .local v2, "actualTypeArguments":[Ljava/lang/reflect/Type;
    const/4 v11, 0x0

    aget-object v6, v2, v11

    check-cast v6, Ljava/lang/Class;

    .line 396
    .local v6, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v6}, Lcom/vkcoffee/android/orm/FieldType;->parse(Ljava/lang/Class;)Lcom/vkcoffee/android/orm/FieldType;

    move-result-object v7

    .line 397
    .local v7, "keyType":Lcom/vkcoffee/android/orm/FieldType;
    const/4 v11, 0x1

    aget-object v9, v2, v11

    check-cast v9, Ljava/lang/Class;

    .line 398
    .local v9, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v9}, Lcom/vkcoffee/android/orm/FieldType;->parse(Ljava/lang/Class;)Lcom/vkcoffee/android/orm/FieldType;

    move-result-object v10

    .line 400
    .local v10, "valueType":Lcom/vkcoffee/android/orm/FieldType;
    move-object/from16 v0, p3

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v6, v9, v7, v10}, Lcom/vkcoffee/android/orm/FieldType;->parseMap(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lcom/vkcoffee/android/orm/FieldType;Lcom/vkcoffee/android/orm/FieldType;)Ljava/util/HashMap;

    move-result-object v11

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v11}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 404
    .end local v2    # "actualTypeArguments":[Ljava/lang/reflect/Type;
    .end local v5    # "genericTypes":Ljava/lang/reflect/ParameterizedType;
    .end local v6    # "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "keyType":Lcom/vkcoffee/android/orm/FieldType;
    .end local v9    # "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v10    # "valueType":Lcom/vkcoffee/android/orm/FieldType;
    :pswitch_14
    move-object/from16 v0, p3

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v11}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 407
    :pswitch_15
    move-object/from16 v0, p3

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 408
    .local v8, "name":Ljava/lang/String;
    if-eqz v8, :cond_2

    .line 409
    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v11

    invoke-static {v11, v8}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v11

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v11}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 411
    :cond_2
    const/4 v11, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v11}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 417
    .end local v8    # "name":Ljava/lang/String;
    :pswitch_16
    :try_start_0
    new-instance v11, Lorg/json/JSONObject;

    move-object/from16 v0, p3

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v11}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 418
    :catch_0
    move-exception v3

    .line 419
    .local v3, "e":Lorg/json/JSONException;
    const/4 v11, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v11}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 424
    .end local v3    # "e":Lorg/json/JSONException;
    :pswitch_17
    :try_start_1
    new-instance v11, Lorg/json/JSONArray;

    move-object/from16 v0, p3

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v11}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 430
    :goto_3
    :pswitch_18
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Unsupported reference type "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/vkcoffee/android/orm/ORM;->logD(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 425
    :catch_1
    move-exception v3

    .line 426
    .restart local v3    # "e":Lorg/json/JSONException;
    const/4 v11, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v11}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    .line 331
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_7
        :pswitch_4
        :pswitch_5
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_18
        :pswitch_14
        :pswitch_15
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_17
        :pswitch_16
        :pswitch_10
    .end packed-switch
.end method
