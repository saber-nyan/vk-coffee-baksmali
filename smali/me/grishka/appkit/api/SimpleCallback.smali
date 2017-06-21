.class public abstract Lme/grishka/appkit/api/SimpleCallback;
.super Ljava/lang/Object;
.source "SimpleCallback.java"

# interfaces
.implements Lme/grishka/appkit/api/Callback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lme/grishka/appkit/api/Callback",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private fragment:Landroid/app/Fragment;


# direct methods
.method public constructor <init>(Landroid/app/Fragment;)V
    .locals 0
    .param p1, "f"    # Landroid/app/Fragment;

    .prologue
    .line 14
    .local p0, "this":Lme/grishka/appkit/api/SimpleCallback;, "Lme/grishka/appkit/api/SimpleCallback<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lme/grishka/appkit/api/SimpleCallback;->fragment:Landroid/app/Fragment;

    .line 16
    return-void
.end method


# virtual methods
.method public onError(Lme/grishka/appkit/api/ErrorResponse;)V
    .locals 1
    .param p1, "error"    # Lme/grishka/appkit/api/ErrorResponse;

    .prologue
    .line 20
    .local p0, "this":Lme/grishka/appkit/api/SimpleCallback;, "Lme/grishka/appkit/api/SimpleCallback<TT;>;"
    iget-object v0, p0, Lme/grishka/appkit/api/SimpleCallback;->fragment:Landroid/app/Fragment;

    instance-of v0, v0, Lme/grishka/appkit/fragments/LoaderFragment;

    if-eqz v0, :cond_0

    .line 21
    iget-object v0, p0, Lme/grishka/appkit/api/SimpleCallback;->fragment:Landroid/app/Fragment;

    check-cast v0, Lme/grishka/appkit/fragments/LoaderFragment;

    invoke-virtual {v0, p1}, Lme/grishka/appkit/fragments/LoaderFragment;->onError(Lme/grishka/appkit/api/ErrorResponse;)V

    .line 23
    :cond_0
    return-void
.end method
