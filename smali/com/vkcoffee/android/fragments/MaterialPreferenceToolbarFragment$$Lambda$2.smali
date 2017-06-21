.class final synthetic Lcom/vkcoffee/android/fragments/MaterialPreferenceToolbarFragment$$Lambda$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v7/widget/Toolbar$OnMenuItemClickListener;


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/fragments/MaterialPreferenceToolbarFragment;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/MaterialPreferenceToolbarFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vkcoffee/android/fragments/MaterialPreferenceToolbarFragment$$Lambda$2;->arg$1:Lcom/vkcoffee/android/fragments/MaterialPreferenceToolbarFragment;

    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/fragments/MaterialPreferenceToolbarFragment;)Landroid/support/v7/widget/Toolbar$OnMenuItemClickListener;
    .locals 1

    new-instance v0, Lcom/vkcoffee/android/fragments/MaterialPreferenceToolbarFragment$$Lambda$2;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/MaterialPreferenceToolbarFragment$$Lambda$2;-><init>(Lcom/vkcoffee/android/fragments/MaterialPreferenceToolbarFragment;)V

    return-object v0
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/MaterialPreferenceToolbarFragment$$Lambda$2;->arg$1:Lcom/vkcoffee/android/fragments/MaterialPreferenceToolbarFragment;

    invoke-virtual {v0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
