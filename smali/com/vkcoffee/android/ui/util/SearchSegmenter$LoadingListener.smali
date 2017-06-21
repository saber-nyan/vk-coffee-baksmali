.class public interface abstract Lcom/vkcoffee/android/ui/util/SearchSegmenter$LoadingListener;
.super Ljava/lang/Object;
.source "SearchSegmenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/ui/util/SearchSegmenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LoadingListener"
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
.method public abstract onError(Lme/grishka/appkit/api/ErrorResponse;Ljava/lang/String;II)V
.end method

.method public abstract onSuccess(Lme/grishka/appkit/api/PaginatedList;Ljava/lang/String;II)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lme/grishka/appkit/api/PaginatedList",
            "<+TT;>;",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation
.end method
