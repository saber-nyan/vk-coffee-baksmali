.class final synthetic Lcom/vkcoffee/android/fragments/groups/GroupInvitesFragment$$Lambda$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/fragments/groups/GroupInvitesFragment;

.field private final arg$2:Lcom/vkcoffee/android/api/GroupInvitation;

.field private final arg$3:I


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/groups/GroupInvitesFragment;Lcom/vkcoffee/android/api/GroupInvitation;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vkcoffee/android/fragments/groups/GroupInvitesFragment$$Lambda$3;->arg$1:Lcom/vkcoffee/android/fragments/groups/GroupInvitesFragment;

    iput-object p2, p0, Lcom/vkcoffee/android/fragments/groups/GroupInvitesFragment$$Lambda$3;->arg$2:Lcom/vkcoffee/android/api/GroupInvitation;

    iput p3, p0, Lcom/vkcoffee/android/fragments/groups/GroupInvitesFragment$$Lambda$3;->arg$3:I

    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/fragments/groups/GroupInvitesFragment;Lcom/vkcoffee/android/api/GroupInvitation;I)Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    new-instance v0, Lcom/vkcoffee/android/fragments/groups/GroupInvitesFragment$$Lambda$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/vkcoffee/android/fragments/groups/GroupInvitesFragment$$Lambda$3;-><init>(Lcom/vkcoffee/android/fragments/groups/GroupInvitesFragment;Lcom/vkcoffee/android/api/GroupInvitation;I)V

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groups/GroupInvitesFragment$$Lambda$3;->arg$1:Lcom/vkcoffee/android/fragments/groups/GroupInvitesFragment;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/groups/GroupInvitesFragment$$Lambda$3;->arg$2:Lcom/vkcoffee/android/api/GroupInvitation;

    iget v2, p0, Lcom/vkcoffee/android/fragments/groups/GroupInvitesFragment$$Lambda$3;->arg$3:I

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/vkcoffee/android/fragments/groups/GroupInvitesFragment;->lambda$null$385(Lcom/vkcoffee/android/api/GroupInvitation;ILandroid/content/DialogInterface;I)V

    return-void
.end method
