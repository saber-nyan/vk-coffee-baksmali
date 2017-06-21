.class Lcom/vkcoffee/android/fragments/location/CheckInFragment$3;
.super Ljava/lang/Object;
.source "CheckInFragment.java"

# interfaces
.implements Lcom/vkcoffee/android/ui/SearchViewWrapper$SearchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/location/CheckInFragment;->initToolbar()V
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
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/location/CheckInFragment$3;->this$0:Lcom/vkcoffee/android/fragments/location/CheckInFragment;

    .line 410
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryChanged(Ljava/lang/String;)V
    .locals 3
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 420
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/location/CheckInFragment$3;->this$0:Lcom/vkcoffee/android/fragments/location/CheckInFragment;

    .line 421
    .local v0, "checkInFragment":Lcom/vkcoffee/android/fragments/location/CheckInFragment;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v1, 0x1

    .line 422
    .local v1, "z":Z
    :goto_0
    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->setSearchMode(Z)V

    .line 423
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/location/CheckInFragment$3;->this$0:Lcom/vkcoffee/android/fragments/location/CheckInFragment;

    invoke-virtual {v2}, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->updateList()V

    .line 424
    return-void

    .line 421
    .end local v1    # "z":Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onQueryConfirmed(Ljava/lang/String;)V
    .locals 1
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 412
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/location/CheckInFragment$3;->this$0:Lcom/vkcoffee/android/fragments/location/CheckInFragment;

    iput-object p1, v0, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->mQuery:Ljava/lang/String;

    .line 413
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/location/CheckInFragment$3;->this$0:Lcom/vkcoffee/android/fragments/location/CheckInFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->loadData()V

    .line 414
    return-void
.end method

.method public onQuerySubmitted(Ljava/lang/String;)V
    .locals 0
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 417
    return-void
.end method
