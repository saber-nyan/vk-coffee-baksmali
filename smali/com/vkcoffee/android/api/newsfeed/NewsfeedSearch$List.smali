.class public Lcom/vkcoffee/android/api/newsfeed/NewsfeedSearch$List;
.super Lcom/vkcoffee/android/data/VKFromList;
.source "NewsfeedSearch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/api/newsfeed/NewsfeedSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "List"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/vkcoffee/android/data/VKFromList",
        "<TT;>;"
    }
.end annotation


# instance fields
.field public final query:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "from"    # Ljava/lang/String;
    .param p2, "query"    # Ljava/lang/String;

    .prologue
    .line 22
    .local p0, "this":Lcom/vkcoffee/android/api/newsfeed/NewsfeedSearch$List;, "Lcom/vkcoffee/android/api/newsfeed/NewsfeedSearch$List<TT;>;"
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/data/VKFromList;-><init>(Ljava/lang/String;)V

    .line 23
    iput-object p2, p0, Lcom/vkcoffee/android/api/newsfeed/NewsfeedSearch$List;->query:Ljava/lang/String;

    .line 24
    return-void
.end method
