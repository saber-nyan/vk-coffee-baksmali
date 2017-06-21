.class public Lcom/vkcoffee/android/api/newsfeed/NewsfeedGetLists;
.super Lcom/vkcoffee/android/api/ListAPIRequest;
.source "NewsfeedGetLists.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/ListAPIRequest",
        "<",
        "Lcom/vkcoffee/android/NewsfeedList;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 9
    const-string/jumbo v0, "newsfeed.getLists"

    const-class v1, Lcom/vkcoffee/android/NewsfeedList;

    invoke-direct {p0, v0, v1}, Lcom/vkcoffee/android/api/ListAPIRequest;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 10
    return-void
.end method
