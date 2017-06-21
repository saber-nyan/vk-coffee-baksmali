.class final synthetic Lcom/vkcoffee/android/fragments/gifts/ProfileGiftsFragment$$Lambda$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/fragments/gifts/ProfileGiftsFragment;

.field private final arg$2:Lcom/vkcoffee/android/api/models/GiftItem;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/gifts/ProfileGiftsFragment;Lcom/vkcoffee/android/api/models/GiftItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vkcoffee/android/fragments/gifts/ProfileGiftsFragment$$Lambda$2;->arg$1:Lcom/vkcoffee/android/fragments/gifts/ProfileGiftsFragment;

    iput-object p2, p0, Lcom/vkcoffee/android/fragments/gifts/ProfileGiftsFragment$$Lambda$2;->arg$2:Lcom/vkcoffee/android/api/models/GiftItem;

    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/fragments/gifts/ProfileGiftsFragment;Lcom/vkcoffee/android/api/models/GiftItem;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    new-instance v0, Lcom/vkcoffee/android/fragments/gifts/ProfileGiftsFragment$$Lambda$2;

    invoke-direct {v0, p0, p1}, Lcom/vkcoffee/android/fragments/gifts/ProfileGiftsFragment$$Lambda$2;-><init>(Lcom/vkcoffee/android/fragments/gifts/ProfileGiftsFragment;Lcom/vkcoffee/android/api/models/GiftItem;)V

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/gifts/ProfileGiftsFragment$$Lambda$2;->arg$1:Lcom/vkcoffee/android/fragments/gifts/ProfileGiftsFragment;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/gifts/ProfileGiftsFragment$$Lambda$2;->arg$2:Lcom/vkcoffee/android/api/models/GiftItem;

    invoke-virtual {v0, v1, p1, p2}, Lcom/vkcoffee/android/fragments/gifts/ProfileGiftsFragment;->lambda$showGiftDeleteDialog$379(Lcom/vkcoffee/android/api/models/GiftItem;Landroid/content/DialogInterface;I)V

    return-void
.end method
