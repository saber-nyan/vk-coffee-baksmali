.class public Lcom/vkcoffee/android/fragments/MaterialPreferenceToolbarFragment$MaterialPreferenceToolbarFragment$$Lambda$1;
.super Ljava/lang/Object;
.source "MaterialPreferenceToolbarFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/MaterialPreferenceToolbarFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MaterialPreferenceToolbarFragment$$Lambda$1"
.end annotation


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/fragments/MaterialPreferenceToolbarFragment;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/MaterialPreferenceToolbarFragment;)V
    .locals 0
    .param p1, "materialPreferenceToolbarFragment"    # Lcom/vkcoffee/android/fragments/MaterialPreferenceToolbarFragment;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/MaterialPreferenceToolbarFragment$MaterialPreferenceToolbarFragment$$Lambda$1;->arg$1:Lcom/vkcoffee/android/fragments/MaterialPreferenceToolbarFragment;

    .line 62
    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/fragments/MaterialPreferenceToolbarFragment;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "materialPreferenceToolbarFragment"    # Lcom/vkcoffee/android/fragments/MaterialPreferenceToolbarFragment;

    .prologue
    .line 65
    new-instance v0, Lcom/vkcoffee/android/fragments/MaterialPreferenceToolbarFragment$MaterialPreferenceToolbarFragment$$Lambda$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/MaterialPreferenceToolbarFragment$MaterialPreferenceToolbarFragment$$Lambda$1;-><init>(Lcom/vkcoffee/android/fragments/MaterialPreferenceToolbarFragment;)V

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/MaterialPreferenceToolbarFragment$MaterialPreferenceToolbarFragment$$Lambda$1;->arg$1:Lcom/vkcoffee/android/fragments/MaterialPreferenceToolbarFragment;

    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/fragments/MaterialPreferenceToolbarFragment;->lambda$onCreateView$405(Landroid/view/View;)V

    .line 70
    return-void
.end method
