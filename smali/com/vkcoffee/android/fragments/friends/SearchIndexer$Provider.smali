.class public interface abstract Lcom/vkcoffee/android/fragments/friends/SearchIndexer$Provider;
.super Ljava/lang/Object;
.source "SearchIndexer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/friends/SearchIndexer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Provider"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract getIndexChar(Ljava/lang/Object;)[C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)[C"
        }
    .end annotation
.end method

.method public abstract hasPriority()Z
.end method

.method public abstract matches(Ljava/lang/String;Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)Z"
        }
    .end annotation
.end method

.method public abstract priority(Ljava/lang/String;Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)I"
        }
    .end annotation
.end method
