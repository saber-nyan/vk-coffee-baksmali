.class public interface abstract Lcom/vkcoffee/android/api/auth/AuthExternalCheckAuth$Callback;
.super Ljava/lang/Object;
.source "AuthExternalCheckAuth.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/api/auth/AuthExternalCheckAuth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract fail(ILjava/lang/String;)V
.end method

.method public abstract success(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
.end method

.method public abstract tryLater()V
.end method
