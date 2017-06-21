.class Lcom/vkcoffee/android/fragments/ProfileFragment$ViewViewHolder;
.super Lcom/vkcoffee/android/BindableViewHolder;
.source "ProfileFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/ProfileFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewViewHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/BindableViewHolder",
        "<",
        "Lcom/vkcoffee/android/fragments/ProfileFragment$ViewInfoItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;


# direct methods
.method public constructor <init>(Lcom/vkcoffee/android/fragments/ProfileFragment;Landroid/view/View;)V
    .locals 0
    .param p2, "itemView"    # Landroid/view/View;

    .prologue
    .line 411
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$ViewViewHolder;->this$0:Lcom/vkcoffee/android/fragments/ProfileFragment;

    .line 412
    invoke-direct {p0, p2}, Lcom/vkcoffee/android/BindableViewHolder;-><init>(Landroid/view/View;)V

    .line 413
    return-void
.end method


# virtual methods
.method public onBind(Lcom/vkcoffee/android/fragments/ProfileFragment$ViewInfoItem;)V
    .locals 0
    .param p1, "item"    # Lcom/vkcoffee/android/fragments/ProfileFragment$ViewInfoItem;

    .prologue
    .line 416
    return-void
.end method

.method public bridge synthetic onBind(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/vkcoffee/android/fragments/ProfileFragment$ViewInfoItem;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/ProfileFragment$ViewViewHolder;->onBind(Lcom/vkcoffee/android/fragments/ProfileFragment$ViewInfoItem;)V

    return-void
.end method
