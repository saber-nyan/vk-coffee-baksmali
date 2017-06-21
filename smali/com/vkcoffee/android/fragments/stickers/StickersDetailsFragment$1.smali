.class final Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment$1;
.super Lcom/vkcoffee/android/api/SimpleCallback;
.source "StickersDetailsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment;->show(ILjava/lang/String;Landroid/app/Activity;)V
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


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/app/Activity;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    iput-object p2, p0, Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment$1;->val$referrer:Ljava/lang/String;

    iput-object p3, p0, Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0, p1}, Lcom/vkcoffee/android/api/SimpleCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public success(Lcom/vkcoffee/android/data/orm/StickerStockItem;)V
    .locals 1
    .param p1, "result"    # Lcom/vkcoffee/android/data/orm/StickerStockItem;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment$1;->val$referrer:Ljava/lang/String;

    iput-object v0, p1, Lcom/vkcoffee/android/data/orm/StickerStockItem;->referrer:Ljava/lang/String;

    .line 72
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment$1;->val$activity:Landroid/app/Activity;

    invoke-static {p1, v0}, Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment;->show(Lcom/vkcoffee/android/data/orm/StickerStockItem;Landroid/app/Activity;)V

    .line 73
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 68
    check-cast p1, Lcom/vkcoffee/android/data/orm/StickerStockItem;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/stickers/StickersDetailsFragment$1;->success(Lcom/vkcoffee/android/data/orm/StickerStockItem;)V

    return-void
.end method
