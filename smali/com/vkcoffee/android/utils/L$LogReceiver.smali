.class public interface abstract Lcom/vkcoffee/android/utils/L$LogReceiver;
.super Ljava/lang/Object;
.source "L.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/utils/L;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LogReceiver"
.end annotation


# virtual methods
.method public abstract log(Lcom/vkcoffee/android/utils/L$LogType;Ljava/lang/String;Ljava/lang/String;)V
    .param p1    # Lcom/vkcoffee/android/utils/L$LogType;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract log(Lcom/vkcoffee/android/utils/L$LogType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .param p1    # Lcom/vkcoffee/android/utils/L$LogType;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Throwable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method
