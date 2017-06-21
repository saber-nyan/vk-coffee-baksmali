.class public final enum Lcom/vkcoffee/android/api/ExtendedUserProfile$Deactivated;
.super Ljava/lang/Enum;
.source "ExtendedUserProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/api/ExtendedUserProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Deactivated"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/vkcoffee/android/api/ExtendedUserProfile$Deactivated;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/vkcoffee/android/api/ExtendedUserProfile$Deactivated;

.field public static final enum Banned:Lcom/vkcoffee/android/api/ExtendedUserProfile$Deactivated;

.field public static final enum Deleted:Lcom/vkcoffee/android/api/ExtendedUserProfile$Deactivated;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 186
    new-instance v0, Lcom/vkcoffee/android/api/ExtendedUserProfile$Deactivated;

    const-string/jumbo v1, "Banned"

    invoke-direct {v0, v1, v2}, Lcom/vkcoffee/android/api/ExtendedUserProfile$Deactivated;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vkcoffee/android/api/ExtendedUserProfile$Deactivated;->Banned:Lcom/vkcoffee/android/api/ExtendedUserProfile$Deactivated;

    new-instance v0, Lcom/vkcoffee/android/api/ExtendedUserProfile$Deactivated;

    const-string/jumbo v1, "Deleted"

    invoke-direct {v0, v1, v3}, Lcom/vkcoffee/android/api/ExtendedUserProfile$Deactivated;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vkcoffee/android/api/ExtendedUserProfile$Deactivated;->Deleted:Lcom/vkcoffee/android/api/ExtendedUserProfile$Deactivated;

    .line 185
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/vkcoffee/android/api/ExtendedUserProfile$Deactivated;

    sget-object v1, Lcom/vkcoffee/android/api/ExtendedUserProfile$Deactivated;->Banned:Lcom/vkcoffee/android/api/ExtendedUserProfile$Deactivated;

    aput-object v1, v0, v2

    sget-object v1, Lcom/vkcoffee/android/api/ExtendedUserProfile$Deactivated;->Deleted:Lcom/vkcoffee/android/api/ExtendedUserProfile$Deactivated;

    aput-object v1, v0, v3

    sput-object v0, Lcom/vkcoffee/android/api/ExtendedUserProfile$Deactivated;->$VALUES:[Lcom/vkcoffee/android/api/ExtendedUserProfile$Deactivated;

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
    .line 185
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/vkcoffee/android/api/ExtendedUserProfile$Deactivated;
    .locals 3
    .param p0, "reason"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 190
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 196
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 190
    :sswitch_0
    const-string/jumbo v2, "banned"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v2, "deleted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 192
    :pswitch_0
    sget-object v0, Lcom/vkcoffee/android/api/ExtendedUserProfile$Deactivated;->Banned:Lcom/vkcoffee/android/api/ExtendedUserProfile$Deactivated;

    goto :goto_1

    .line 194
    :pswitch_1
    sget-object v0, Lcom/vkcoffee/android/api/ExtendedUserProfile$Deactivated;->Deleted:Lcom/vkcoffee/android/api/ExtendedUserProfile$Deactivated;

    goto :goto_1

    .line 190
    nop

    :sswitch_data_0
    .sparse-switch
        -0x533a80e2 -> :sswitch_0
        0x5c6a3019 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vkcoffee/android/api/ExtendedUserProfile$Deactivated;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 185
    const-class v0, Lcom/vkcoffee/android/api/ExtendedUserProfile$Deactivated;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/api/ExtendedUserProfile$Deactivated;

    return-object v0
.end method

.method public static values()[Lcom/vkcoffee/android/api/ExtendedUserProfile$Deactivated;
    .locals 1

    .prologue
    .line 185
    sget-object v0, Lcom/vkcoffee/android/api/ExtendedUserProfile$Deactivated;->$VALUES:[Lcom/vkcoffee/android/api/ExtendedUserProfile$Deactivated;

    invoke-virtual {v0}, [Lcom/vkcoffee/android/api/ExtendedUserProfile$Deactivated;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vkcoffee/android/api/ExtendedUserProfile$Deactivated;

    return-object v0
.end method
