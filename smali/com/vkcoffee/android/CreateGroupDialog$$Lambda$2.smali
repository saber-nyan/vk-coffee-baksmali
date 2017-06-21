.class final synthetic Lcom/vkcoffee/android/CreateGroupDialog$$Lambda$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/vkcoffee/android/ui/CheckableRelativeLayout$OnCheckedChangeListener;


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/CreateGroupDialog;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/CreateGroupDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vkcoffee/android/CreateGroupDialog$$Lambda$2;->arg$1:Lcom/vkcoffee/android/CreateGroupDialog;

    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/CreateGroupDialog;)Lcom/vkcoffee/android/ui/CheckableRelativeLayout$OnCheckedChangeListener;
    .locals 1

    new-instance v0, Lcom/vkcoffee/android/CreateGroupDialog$$Lambda$2;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/CreateGroupDialog$$Lambda$2;-><init>(Lcom/vkcoffee/android/CreateGroupDialog;)V

    return-object v0
.end method


# virtual methods
.method public onCheckedChanged(Landroid/view/View;Z)V
    .locals 1

    iget-object v0, p0, Lcom/vkcoffee/android/CreateGroupDialog$$Lambda$2;->arg$1:Lcom/vkcoffee/android/CreateGroupDialog;

    invoke-virtual {v0, p1, p2}, Lcom/vkcoffee/android/CreateGroupDialog;->lambda$createView$259(Landroid/view/View;Z)V

    return-void
.end method
