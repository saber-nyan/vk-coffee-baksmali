.class final synthetic Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;

.field private final arg$2:Landroid/app/Activity;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$$Lambda$1;->arg$1:Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;

    iput-object p2, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$$Lambda$1;->arg$2:Landroid/app/Activity;

    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;Landroid/app/Activity;)Landroid/widget/TextView$OnEditorActionListener;
    .locals 1

    new-instance v0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$$Lambda$1;

    invoke-direct {v0, p0, p1}, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$$Lambda$1;-><init>(Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;Landroid/app/Activity;)V

    return-object v0
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$$Lambda$1;->arg$1:Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$$Lambda$1;->arg$2:Landroid/app/Activity;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->lambda$onAttach$437(Landroid/app/Activity;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
