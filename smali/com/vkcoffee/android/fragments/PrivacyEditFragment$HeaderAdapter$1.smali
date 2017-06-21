.class Lcom/vkcoffee/android/fragments/PrivacyEditFragment$HeaderAdapter$1;
.super Lcom/vkcoffee/android/ui/holder/RecyclerHolder;
.source "PrivacyEditFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/PrivacyEditFragment$HeaderAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/ui/holder/RecyclerHolder",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkcoffee/android/fragments/PrivacyEditFragment$HeaderAdapter;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/PrivacyEditFragment$HeaderAdapter;Landroid/view/View;)V
    .locals 0
    .param p1, "this$1"    # Lcom/vkcoffee/android/fragments/PrivacyEditFragment$HeaderAdapter;
    .param p2, "itemView"    # Landroid/view/View;

    .prologue
    .line 600
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/PrivacyEditFragment$HeaderAdapter$1;->this$1:Lcom/vkcoffee/android/fragments/PrivacyEditFragment$HeaderAdapter;

    invoke-direct {p0, p2}, Lcom/vkcoffee/android/ui/holder/RecyclerHolder;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic bind(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 600
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/PrivacyEditFragment$HeaderAdapter$1;->bind(Ljava/lang/Void;)V

    return-void
.end method

.method public bind(Ljava/lang/Void;)V
    .locals 0
    .param p1, "item"    # Ljava/lang/Void;

    .prologue
    .line 603
    return-void
.end method
