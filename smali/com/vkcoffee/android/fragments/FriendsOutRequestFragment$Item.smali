.class Lcom/vkcoffee/android/fragments/FriendsOutRequestFragment$Item;
.super Ljava/lang/Object;
.source "FriendsOutRequestFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/FriendsOutRequestFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Item"
.end annotation


# instance fields
.field public final iconid:I

.field public final id:Ljava/lang/Long;

.field public final online:Ljava/lang/String;

.field public final user_name:Ljava/lang/String;

.field public final user_photo:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;I)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "photo"    # Ljava/lang/String;
    .param p3, "id"    # Ljava/lang/Long;
    .param p4, "online"    # Ljava/lang/String;
    .param p5, "iconid"    # I

    .prologue
    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/FriendsOutRequestFragment$Item;->user_name:Ljava/lang/String;

    .line 179
    iput-object p2, p0, Lcom/vkcoffee/android/fragments/FriendsOutRequestFragment$Item;->user_photo:Ljava/lang/String;

    .line 180
    iput-object p3, p0, Lcom/vkcoffee/android/fragments/FriendsOutRequestFragment$Item;->id:Ljava/lang/Long;

    .line 181
    iput-object p4, p0, Lcom/vkcoffee/android/fragments/FriendsOutRequestFragment$Item;->online:Ljava/lang/String;

    .line 182
    iput p5, p0, Lcom/vkcoffee/android/fragments/FriendsOutRequestFragment$Item;->iconid:I

    .line 183
    return-void
.end method
