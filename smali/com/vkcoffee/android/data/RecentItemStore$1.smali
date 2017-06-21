.class Lcom/vkcoffee/android/data/RecentItemStore$1;
.super Ljava/lang/Object;
.source "RecentItemStore.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/data/RecentItemStore;->update()[Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/vkcoffee/android/data/RecentItemStore$RecentItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/data/RecentItemStore;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/data/RecentItemStore;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/data/RecentItemStore;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/vkcoffee/android/data/RecentItemStore$1;->this$0:Lcom/vkcoffee/android/data/RecentItemStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/vkcoffee/android/data/RecentItemStore$RecentItem;Lcom/vkcoffee/android/data/RecentItemStore$RecentItem;)I
    .locals 2
    .param p1, "lhs"    # Lcom/vkcoffee/android/data/RecentItemStore$RecentItem;
    .param p2, "rhs"    # Lcom/vkcoffee/android/data/RecentItemStore$RecentItem;

    .prologue
    .line 82
    iget v0, p1, Lcom/vkcoffee/android/data/RecentItemStore$RecentItem;->count:F

    iget v1, p2, Lcom/vkcoffee/android/data/RecentItemStore$RecentItem;->count:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 83
    const/4 v0, 0x0

    .line 85
    :goto_0
    return v0

    :cond_0
    iget v0, p1, Lcom/vkcoffee/android/data/RecentItemStore$RecentItem;->count:F

    iget v1, p2, Lcom/vkcoffee/android/data/RecentItemStore$RecentItem;->count:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 79
    check-cast p1, Lcom/vkcoffee/android/data/RecentItemStore$RecentItem;

    check-cast p2, Lcom/vkcoffee/android/data/RecentItemStore$RecentItem;

    invoke-virtual {p0, p1, p2}, Lcom/vkcoffee/android/data/RecentItemStore$1;->compare(Lcom/vkcoffee/android/data/RecentItemStore$RecentItem;Lcom/vkcoffee/android/data/RecentItemStore$RecentItem;)I

    move-result v0

    return v0
.end method
