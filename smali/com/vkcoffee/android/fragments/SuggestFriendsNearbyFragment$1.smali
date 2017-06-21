.class Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment$1;
.super Ljava/lang/Object;
.source "SuggestFriendsNearbyFragment.java"

# interfaces
.implements Lcom/google/android/gms/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment$1;->this$0:Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 1
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment$1;->this$0:Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment;

    invoke-static {v0, p1}, Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment;->access$000(Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment;Landroid/location/Location;)V

    .line 59
    return-void
.end method
