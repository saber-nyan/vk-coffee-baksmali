.class public interface abstract Lcom/vkcoffee/android/ui/SearchViewWrapper$SearchListener;
.super Ljava/lang/Object;
.source "SearchViewWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/ui/SearchViewWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SearchListener"
.end annotation


# virtual methods
.method public abstract onQueryChanged(Ljava/lang/String;)V
.end method

.method public abstract onQueryConfirmed(Ljava/lang/String;)V
.end method

.method public abstract onQuerySubmitted(Ljava/lang/String;)V
.end method
