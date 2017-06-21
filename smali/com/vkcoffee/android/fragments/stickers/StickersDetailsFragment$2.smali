.class final Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment$2;
.super Lcom/vkcoffee/android/api/SimpleCallback;
.source "StickersDetailsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment;->showByStickerId(ILjava/lang/String;Landroid/app/Activity;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/SimpleCallback",
        "<",
        "Lcom/vkcoffee/android/data/orm/StickerStockItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$referrer:Ljava/lang/String;

.field final synthetic val$reloadIfPurchased:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;ZLandroid/app/Activity;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 81
    iput-object p2, p0, Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment$2;->val$referrer:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment$2;->val$reloadIfPurchased:Z

    iput-object p4, p0, Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment$2;->val$activity:Landroid/app/Activity;

    invoke-direct {p0, p1}, Lcom/vkcoffee/android/api/SimpleCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public success(Lcom/vkcoffee/android/data/orm/StickerStockItem;)V
    .locals 1
    .param p1, "result"    # Lcom/vkcoffee/android/data/orm/StickerStockItem;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment$2;->val$referrer:Ljava/lang/String;

    iput-object v0, p1, Lcom/vkcoffee/android/data/orm/StickerStockItem;->referrer:Ljava/lang/String;

    .line 86
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment$2;->val$reloadIfPurchased:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/vkcoffee/android/data/orm/StickerStockItem;->purchased:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/vkcoffee/android/data/orm/StickerStockItem;->active:Z

    if-eqz v0, :cond_0

    .line 91
    invoke-static {}, Lcom/vkcoffee/android/stickers/Stickers;->get()Lcom/vkcoffee/android/stickers/Stickers;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkcoffee/android/stickers/Stickers;->reload()V

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment$2;->val$activity:Landroid/app/Activity;

    invoke-static {p1, v0}, Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment;->show(Lcom/vkcoffee/android/data/orm/StickerStockItem;Landroid/app/Activity;)V

    .line 97
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 81
    check-cast p1, Lcom/vkcoffee/android/data/orm/StickerStockItem;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment$2;->success(Lcom/vkcoffee/android/data/orm/StickerStockItem;)V

    return-void
.end method
