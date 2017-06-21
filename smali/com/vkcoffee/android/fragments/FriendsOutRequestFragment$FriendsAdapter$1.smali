.class Lcom/vkcoffee/android/fragments/FriendsOutRequestFragment$FriendsAdapter$1;
.super Ljava/lang/Object;
.source "FriendsOutRequestFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/FriendsOutRequestFragment$FriendsAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkcoffee/android/fragments/FriendsOutRequestFragment$FriendsAdapter;

.field private final synthetic val$cancel:Landroid/widget/ImageView;

.field private final synthetic val$id:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/FriendsOutRequestFragment$FriendsAdapter;Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/FriendsOutRequestFragment$FriendsAdapter$1;->this$1:Lcom/vkcoffee/android/fragments/FriendsOutRequestFragment$FriendsAdapter;

    iput-object p2, p0, Lcom/vkcoffee/android/fragments/FriendsOutRequestFragment$FriendsAdapter$1;->val$id:Ljava/lang/String;

    iput-object p3, p0, Lcom/vkcoffee/android/fragments/FriendsOutRequestFragment$FriendsAdapter$1;->val$cancel:Landroid/widget/ImageView;

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 220
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/FriendsOutRequestFragment$FriendsAdapter$1;->this$1:Lcom/vkcoffee/android/fragments/FriendsOutRequestFragment$FriendsAdapter;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/FriendsOutRequestFragment$FriendsAdapter;->access$0(Lcom/vkcoffee/android/fragments/FriendsOutRequestFragment$FriendsAdapter;)Lcom/vkcoffee/android/fragments/FriendsOutRequestFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/FriendsOutRequestFragment$FriendsAdapter$1;->val$id:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/vkcoffee/android/fragments/FriendsOutRequestFragment;->access$0(Lcom/vkcoffee/android/fragments/FriendsOutRequestFragment;Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/FriendsOutRequestFragment$FriendsAdapter$1;->val$cancel:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 222
    return-void
.end method
