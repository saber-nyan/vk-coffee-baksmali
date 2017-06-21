.class public Lcom/vkcoffee/android/api/FriendRequest;
.super Lcom/vkcoffee/android/api/models/Model;
.source "FriendRequest.java"


# static fields
.field public static final STATE_ACCEPTED:I = 0x2

.field public static final STATE_DECLINED:I = 0x3

.field public static final STATE_LOADING:I = 0x1

.field public static final STATE_NEW:I


# instance fields
.field public info:Ljava/lang/String;

.field public message:Ljava/lang/String;

.field public mutualFriends:[Lcom/vkcoffee/android/UserProfile;

.field public numMutualFriends:I

.field public profile:Lcom/vkcoffee/android/UserProfile;

.field public sent:Ljava/lang/Boolean;

.field public state:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/vkcoffee/android/api/models/Model;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkcoffee/android/api/FriendRequest;->sent:Ljava/lang/Boolean;

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkcoffee/android/api/FriendRequest;->state:I

    return-void
.end method
