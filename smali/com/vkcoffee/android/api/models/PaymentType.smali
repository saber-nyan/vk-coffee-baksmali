.class public final enum Lcom/vkcoffee/android/api/models/PaymentType;
.super Ljava/lang/Enum;
.source "PaymentType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/vkcoffee/android/api/models/PaymentType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/vkcoffee/android/api/models/PaymentType;

.field public static final enum Balance:Lcom/vkcoffee/android/api/models/PaymentType;

.field public static final enum Inapp:Lcom/vkcoffee/android/api/models/PaymentType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 9
    new-instance v0, Lcom/vkcoffee/android/api/models/PaymentType;

    const-string/jumbo v1, "Balance"

    invoke-direct {v0, v1, v2}, Lcom/vkcoffee/android/api/models/PaymentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vkcoffee/android/api/models/PaymentType;->Balance:Lcom/vkcoffee/android/api/models/PaymentType;

    new-instance v0, Lcom/vkcoffee/android/api/models/PaymentType;

    const-string/jumbo v1, "Inapp"

    invoke-direct {v0, v1, v3}, Lcom/vkcoffee/android/api/models/PaymentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vkcoffee/android/api/models/PaymentType;->Inapp:Lcom/vkcoffee/android/api/models/PaymentType;

    .line 8
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/vkcoffee/android/api/models/PaymentType;

    sget-object v1, Lcom/vkcoffee/android/api/models/PaymentType;->Balance:Lcom/vkcoffee/android/api/models/PaymentType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/vkcoffee/android/api/models/PaymentType;->Inapp:Lcom/vkcoffee/android/api/models/PaymentType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/vkcoffee/android/api/models/PaymentType;->$VALUES:[Lcom/vkcoffee/android/api/models/PaymentType;

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
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/vkcoffee/android/api/models/PaymentType;
    .locals 2
    .param p0, "type"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 13
    if-eqz p0, :cond_1

    .line 14
    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 21
    :cond_1
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 14
    :sswitch_0
    const-string/jumbo v1, "balance"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v1, "inapp"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 16
    :pswitch_0
    sget-object v0, Lcom/vkcoffee/android/api/models/PaymentType;->Balance:Lcom/vkcoffee/android/api/models/PaymentType;

    goto :goto_1

    .line 18
    :pswitch_1
    sget-object v0, Lcom/vkcoffee/android/api/models/PaymentType;->Inapp:Lcom/vkcoffee/android/api/models/PaymentType;

    goto :goto_1

    .line 14
    nop

    :sswitch_data_0
    .sparse-switch
        -0x14379124 -> :sswitch_0
        0x5fb1edc -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vkcoffee/android/api/models/PaymentType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 8
    const-class v0, Lcom/vkcoffee/android/api/models/PaymentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/api/models/PaymentType;

    return-object v0
.end method

.method public static values()[Lcom/vkcoffee/android/api/models/PaymentType;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/vkcoffee/android/api/models/PaymentType;->$VALUES:[Lcom/vkcoffee/android/api/models/PaymentType;

    invoke-virtual {v0}, [Lcom/vkcoffee/android/api/models/PaymentType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vkcoffee/android/api/models/PaymentType;

    return-object v0
.end method
