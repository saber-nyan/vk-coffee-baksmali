.class Lcom/vkcoffee/android/stickers/StickersView$2;
.super Ljava/lang/Object;
.source "StickersView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/stickers/StickersView;->createStoreTabView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/stickers/StickersView;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/stickers/StickersView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/stickers/StickersView;

    .prologue
    .line 280
    iput-object p1, p0, Lcom/vkcoffee/android/stickers/StickersView$2;->this$0:Lcom/vkcoffee/android/stickers/StickersView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 283
    iget-object v0, p0, Lcom/vkcoffee/android/stickers/StickersView$2;->this$0:Lcom/vkcoffee/android/stickers/StickersView;

    invoke-virtual {v0}, Lcom/vkcoffee/android/stickers/StickersView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/stickers/StickerStoreFragment;->start(Landroid/app/Activity;)V

    .line 285
    return-void
.end method
