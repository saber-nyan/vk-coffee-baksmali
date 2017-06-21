.class public interface abstract Lcom/google/android/now/INowAuthService;
.super Ljava/lang/Object;
.source "INowAuthService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/now/INowAuthService$Stub;
    }
.end annotation


# virtual methods
.method public abstract getAuthCode(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
