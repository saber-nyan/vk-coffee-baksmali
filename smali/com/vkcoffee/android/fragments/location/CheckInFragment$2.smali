.class Lcom/vkcoffee/android/fragments/location/CheckInFragment$2;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "CheckInFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/location/CheckInFragment;->initList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/location/CheckInFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/location/CheckInFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/location/CheckInFragment$2;->this$0:Lcom/vkcoffee/android/fragments/location/CheckInFragment;

    .line 363
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 4
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "newState"    # I

    .prologue
    .line 365
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/location/CheckInFragment$2;->this$0:Lcom/vkcoffee/android/fragments/location/CheckInFragment;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 366
    .local v0, "focus":Landroid/view/View;
    if-eqz p2, :cond_0

    if-eqz v0, :cond_0

    .line 367
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/location/CheckInFragment$2;->this$0:Lcom/vkcoffee/android/fragments/location/CheckInFragment;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 368
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 370
    :cond_0
    return-void
.end method

.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 1
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "dx"    # I
    .param p3, "dy"    # I

    .prologue
    .line 373
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/location/CheckInFragment$2;->this$0:Lcom/vkcoffee/android/fragments/location/CheckInFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->access$3(Lcom/vkcoffee/android/fragments/location/CheckInFragment;)V

    .line 374
    return-void
.end method
