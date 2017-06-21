.class final synthetic Lcom/vkcoffee/android/fragments/ProfileFragment$$Lambda$37;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/fragments/ProfileFragment;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/ProfileFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$$Lambda$37;->arg$1:Lcom/vkcoffee/android/fragments/ProfileFragment;

    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/fragments/ProfileFragment;)Landroid/widget/PopupMenu$OnMenuItemClickListener;
    .locals 1

    new-instance v0, Lcom/vkcoffee/android/fragments/ProfileFragment$$Lambda$37;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/ProfileFragment$$Lambda$37;-><init>(Lcom/vkcoffee/android/fragments/ProfileFragment;)V

    return-object v0
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileFragment$$Lambda$37;->arg$1:Lcom/vkcoffee/android/fragments/ProfileFragment;

    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/fragments/ProfileFragment;->lambda$showChangeEventDecisionOptions$580(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
