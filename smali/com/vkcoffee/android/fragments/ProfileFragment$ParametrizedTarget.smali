.class abstract Lcom/vkcoffee/android/fragments/ProfileFragment$ParametrizedTarget;
.super Ljava/lang/Object;
.source "ProfileFragment.java"

# interfaces
.implements Lme/grishka/appkit/imageloader/ViewImageLoader$Target;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/ProfileFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "ParametrizedTarget"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lme/grishka/appkit/imageloader/ViewImageLoader$Target;"
    }
.end annotation


# instance fields
.field protected param:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 365
    .local p0, "this":Lcom/vkcoffee/android/fragments/ProfileFragment$ParametrizedTarget;, "Lcom/vkcoffee/android/fragments/ProfileFragment$ParametrizedTarget<TT;>;"
    .local p1, "param":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 366
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$ParametrizedTarget;->param:Ljava/lang/Object;

    .line 367
    return-void
.end method
