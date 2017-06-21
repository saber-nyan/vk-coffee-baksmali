.class public Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$StickerManagerFragment$Holder$$Lambda$1;
.super Ljava/lang/Object;
.source "StickerManagerFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StickerManagerFragment$Holder$$Lambda$1"
.end annotation


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$Holder;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$Holder;)V
    .locals 0
    .param p1, "holder"    # Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$Holder;

    .prologue
    .line 452
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 453
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$StickerManagerFragment$Holder$$Lambda$1;->arg$1:Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$Holder;

    .line 454
    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$Holder;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1
    .param p0, "holder"    # Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$Holder;

    .prologue
    .line 457
    new-instance v0, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$StickerManagerFragment$Holder$$Lambda$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$StickerManagerFragment$Holder$$Lambda$1;-><init>(Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$Holder;)V

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 461
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$StickerManagerFragment$Holder$$Lambda$1;->arg$1:Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$Holder;

    invoke-virtual {v0, p1, p2}, Lcom/vkcoffee/android/fragments/stickers/StickerManagerFragment$Holder;->lambda$onClick$609(Landroid/content/DialogInterface;I)V

    .line 462
    return-void
.end method
