.class Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$8$1;
.super Ljava/lang/Object;
.source "SuggestionsFriendsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$8;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$8;)V
    .locals 0
    .param p1, "this$1"    # Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$8;

    .prologue
    .line 693
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$8$1;->this$1:Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 695
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$8$1;->this$1:Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$8;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment$8;->this$0:Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/SuggestionsFriendsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f080165

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 696
    return-void
.end method
