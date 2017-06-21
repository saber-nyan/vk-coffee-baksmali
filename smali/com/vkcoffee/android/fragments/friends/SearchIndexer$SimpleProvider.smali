.class public abstract Lcom/vkcoffee/android/fragments/friends/SearchIndexer$SimpleProvider;
.super Ljava/lang/Object;
.source "SearchIndexer.java"

# interfaces
.implements Lcom/vkcoffee/android/fragments/friends/SearchIndexer$Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/friends/SearchIndexer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SimpleProvider"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/vkcoffee/android/fragments/friends/SearchIndexer$Provider",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 139
    .local p0, "this":Lcom/vkcoffee/android/fragments/friends/SearchIndexer$SimpleProvider;, "Lcom/vkcoffee/android/fragments/friends/SearchIndexer$SimpleProvider<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasPriority()Z
    .locals 1

    .prologue
    .line 147
    .local p0, "this":Lcom/vkcoffee/android/fragments/friends/SearchIndexer$SimpleProvider;, "Lcom/vkcoffee/android/fragments/friends/SearchIndexer$SimpleProvider<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public priority(Ljava/lang/String;Ljava/lang/Object;)I
    .locals 1
    .param p1, "query"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)I"
        }
    .end annotation

    .prologue
    .line 142
    .local p0, "this":Lcom/vkcoffee/android/fragments/friends/SearchIndexer$SimpleProvider;, "Lcom/vkcoffee/android/fragments/friends/SearchIndexer$SimpleProvider<TT;>;"
    .local p2, "item":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    return v0
.end method
