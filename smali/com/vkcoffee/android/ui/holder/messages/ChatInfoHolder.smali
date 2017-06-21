.class public Lcom/vkcoffee/android/ui/holder/messages/ChatInfoHolder;
.super Lcom/vkcoffee/android/ui/holder/RecyclerHolderRef;
.source "ChatInfoHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/ui/holder/messages/ChatInfoHolder$Ref;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/ui/holder/RecyclerHolderRef",
        "<",
        "Lcom/vkcoffee/android/ui/holder/messages/ChatInfoHolder$Ref;",
        ">;"
    }
.end annotation


# instance fields
.field public final imageView:Landroid/widget/ImageView;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final title:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final titleEdit:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "isCreate"    # Z

    .prologue
    .line 125
    if-eqz p2, :cond_0

    const v0, 0x7f03005b

    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/vkcoffee/android/ui/holder/RecyclerHolderRef;-><init>(ILandroid/content/Context;)V

    .line 127
    const v0, 0x7f1001ba

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/holder/messages/ChatInfoHolder;->$(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatInfoHolder;->titleEdit:Landroid/widget/EditText;

    .line 128
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatInfoHolder;->titleEdit:Landroid/widget/EditText;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 130
    const v0, 0x7f1001bb

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/holder/messages/ChatInfoHolder;->$(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatInfoHolder;->imageView:Landroid/widget/ImageView;

    .line 132
    const v0, 0x7f1000dd

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/holder/messages/ChatInfoHolder;->$(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatInfoHolder;->title:Landroid/widget/TextView;

    .line 133
    return-void

    .line 125
    :cond_0
    const v0, 0x7f03005a

    goto :goto_0
.end method
