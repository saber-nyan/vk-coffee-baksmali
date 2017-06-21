.class Lcom/vkcoffee/android/fragments/userlist/CheckinsListFragment$1;
.super Lcom/vkcoffee/android/api/SimpleCallback;
.source "CheckinsListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/userlist/CheckinsListFragment;->doLoadData(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/SimpleCallback",
        "<",
        "Lcom/vkcoffee/android/api/places/PlacesGetCheckinProfiles$Result;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/userlist/CheckinsListFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/userlist/CheckinsListFragment;Landroid/app/Fragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/userlist/CheckinsListFragment;
    .param p2, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 14
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/userlist/CheckinsListFragment$1;->this$0:Lcom/vkcoffee/android/fragments/userlist/CheckinsListFragment;

    invoke-direct {p0, p2}, Lcom/vkcoffee/android/api/SimpleCallback;-><init>(Landroid/app/Fragment;)V

    return-void
.end method


# virtual methods
.method public success(Lcom/vkcoffee/android/api/places/PlacesGetCheckinProfiles$Result;)V
    .locals 2
    .param p1, "r"    # Lcom/vkcoffee/android/api/places/PlacesGetCheckinProfiles$Result;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/userlist/CheckinsListFragment$1;->this$0:Lcom/vkcoffee/android/fragments/userlist/CheckinsListFragment;

    iget v1, p1, Lcom/vkcoffee/android/api/places/PlacesGetCheckinProfiles$Result;->newOffset:I

    invoke-static {v0, v1}, Lcom/vkcoffee/android/fragments/userlist/CheckinsListFragment;->access$002(Lcom/vkcoffee/android/fragments/userlist/CheckinsListFragment;I)I

    .line 18
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/userlist/CheckinsListFragment$1;->this$0:Lcom/vkcoffee/android/fragments/userlist/CheckinsListFragment;

    iget-object v1, p1, Lcom/vkcoffee/android/api/places/PlacesGetCheckinProfiles$Result;->users:Lcom/vkcoffee/android/data/VKList;

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/userlist/CheckinsListFragment;->onDataLoaded(Lme/grishka/appkit/api/PaginatedList;)V

    .line 19
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 14
    check-cast p1, Lcom/vkcoffee/android/api/places/PlacesGetCheckinProfiles$Result;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/userlist/CheckinsListFragment$1;->success(Lcom/vkcoffee/android/api/places/PlacesGetCheckinProfiles$Result;)V

    return-void
.end method
