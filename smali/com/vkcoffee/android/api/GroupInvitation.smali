.class public Lcom/vkcoffee/android/api/GroupInvitation;
.super Lcom/vkcoffee/android/api/models/Model;
.source "GroupInvitation.java"


# static fields
.field public static final STATE_ACCEPTED:I = 0x2

.field public static final STATE_DECLINED:I = 0x3

.field public static final STATE_LOADING:I = 0x1

.field public static final STATE_NEW:I = 0x0

.field public static final STATE_UNSURE:I = 0x4


# instance fields
.field public group:Lcom/vkcoffee/android/api/Group;

.field public inviter:Lcom/vkcoffee/android/UserProfile;

.field public sent:Ljava/lang/Boolean;

.field public size:I

.field public state:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/vkcoffee/android/api/models/Model;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/vkcoffee/android/api/GroupInvitation;->group:Lcom/vkcoffee/android/api/Group;

    invoke-virtual {v0}, Lcom/vkcoffee/android/api/Group;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
