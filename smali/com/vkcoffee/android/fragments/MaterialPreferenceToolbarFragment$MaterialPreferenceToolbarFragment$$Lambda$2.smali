.class public Lcom/vkcoffee/android/fragments/MaterialPreferenceToolbarFragment$MaterialPreferenceToolbarFragment$$Lambda$2;
.super Ljava/lang/Object;
.source "MaterialPreferenceToolbarFragment.java"

# interfaces
.implements Landroid/support/v7/widget/Toolbar$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/MaterialPreferenceToolbarFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MaterialPreferenceToolbarFragment$$Lambda$2"
.end annotation


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/fragments/MaterialPreferenceToolbarFragment;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/MaterialPreferenceToolbarFragment;)V
    .locals 0
    .param p1, "materialPreferenceToolbarFragment"    # Lcom/vkcoffee/android/fragments/MaterialPreferenceToolbarFragment;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/MaterialPreferenceToolbarFragment$MaterialPreferenceToolbarFragment$$Lambda$2;->arg$1:Lcom/vkcoffee/android/fragments/MaterialPreferenceToolbarFragment;

    .line 47
    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/fragments/MaterialPreferenceToolbarFragment;)Landroid/support/v7/widget/Toolbar$OnMenuItemClickListener;
    .locals 1
    .param p0, "materialPreferenceToolbarFragment"    # Lcom/vkcoffee/android/fragments/MaterialPreferenceToolbarFragment;

    .prologue
    .line 50
    new-instance v0, Lcom/vkcoffee/android/fragments/MaterialPreferenceToolbarFragment$MaterialPreferenceToolbarFragment$$Lambda$2;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/MaterialPreferenceToolbarFragment$MaterialPreferenceToolbarFragment$$Lambda$2;-><init>(Lcom/vkcoffee/android/fragments/MaterialPreferenceToolbarFragment;)V

    return-object v0
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/MaterialPreferenceToolbarFragment$MaterialPreferenceToolbarFragment$$Lambda$2;->arg$1:Lcom/vkcoffee/android/fragments/MaterialPreferenceToolbarFragment;

    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/fragments/MaterialPreferenceToolbarFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
