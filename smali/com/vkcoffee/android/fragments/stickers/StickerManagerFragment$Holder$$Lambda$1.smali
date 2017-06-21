.class final synthetic Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$Holder$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$Holder;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$Holder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$Holder$$Lambda$1;->arg$1:Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$Holder;

    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$Holder;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    new-instance v0, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$Holder$$Lambda$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$Holder$$Lambda$1;-><init>(Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$Holder;)V

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$Holder$$Lambda$1;->arg$1:Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$Holder;

    invoke-virtual {v0, p1, p2}, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$Holder;->lambda$onClick$609(Landroid/content/DialogInterface;I)V

    return-void
.end method
