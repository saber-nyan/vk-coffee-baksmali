.class public final enum Lcom/vkcoffee/android/orm/Order;
.super Ljava/lang/Enum;
.source "Order.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/vkcoffee/android/orm/Order;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/vkcoffee/android/orm/Order;

.field public static final enum ASC:Lcom/vkcoffee/android/orm/Order;

.field public static final enum DESC:Lcom/vkcoffee/android/orm/Order;

.field public static final enum RANDOM:Lcom/vkcoffee/android/orm/Order;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 8
    new-instance v0, Lcom/vkcoffee/android/orm/Order;

    const-string/jumbo v1, "ASC"

    invoke-direct {v0, v1, v2}, Lcom/vkcoffee/android/orm/Order;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vkcoffee/android/orm/Order;->ASC:Lcom/vkcoffee/android/orm/Order;

    new-instance v0, Lcom/vkcoffee/android/orm/Order;

    const-string/jumbo v1, "DESC"

    invoke-direct {v0, v1, v3}, Lcom/vkcoffee/android/orm/Order;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vkcoffee/android/orm/Order;->DESC:Lcom/vkcoffee/android/orm/Order;

    new-instance v0, Lcom/vkcoffee/android/orm/Order;

    const-string/jumbo v1, "RANDOM"

    invoke-direct {v0, v1, v4}, Lcom/vkcoffee/android/orm/Order;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vkcoffee/android/orm/Order;->RANDOM:Lcom/vkcoffee/android/orm/Order;

    .line 6
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/vkcoffee/android/orm/Order;

    sget-object v1, Lcom/vkcoffee/android/orm/Order;->ASC:Lcom/vkcoffee/android/orm/Order;

    aput-object v1, v0, v2

    sget-object v1, Lcom/vkcoffee/android/orm/Order;->DESC:Lcom/vkcoffee/android/orm/Order;

    aput-object v1, v0, v3

    sget-object v1, Lcom/vkcoffee/android/orm/Order;->RANDOM:Lcom/vkcoffee/android/orm/Order;

    aput-object v1, v0, v4

    sput-object v0, Lcom/vkcoffee/android/orm/Order;->$VALUES:[Lcom/vkcoffee/android/orm/Order;

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
    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 18
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vkcoffee/android/orm/Order;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 6
    const-class v0, Lcom/vkcoffee/android/orm/Order;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/orm/Order;

    return-object v0
.end method

.method public static values()[Lcom/vkcoffee/android/orm/Order;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/vkcoffee/android/orm/Order;->$VALUES:[Lcom/vkcoffee/android/orm/Order;

    invoke-virtual {v0}, [Lcom/vkcoffee/android/orm/Order;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vkcoffee/android/orm/Order;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 12
    sget-object v0, Lcom/vkcoffee/android/orm/Order$1;->$SwitchMap$com$vkontakte$android$orm$Order:[I

    invoke-virtual {p0}, Lcom/vkcoffee/android/orm/Order;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 20
    invoke-super {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 14
    :pswitch_0
    const-string/jumbo v0, "ASC"

    goto :goto_0

    .line 16
    :pswitch_1
    const-string/jumbo v0, "DESC"

    goto :goto_0

    .line 18
    :pswitch_2
    const-string/jumbo v0, "RANDOM()"

    goto :goto_0

    .line 12
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
