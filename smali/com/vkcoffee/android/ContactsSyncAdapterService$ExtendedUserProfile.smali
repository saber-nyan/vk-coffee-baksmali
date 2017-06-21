.class public Lcom/vkcoffee/android/ContactsSyncAdapterService$ExtendedUserProfile;
.super Lcom/vkcoffee/android/UserProfile;
.source "ContactsSyncAdapterService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/ContactsSyncAdapterService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExtendedUserProfile"
.end annotation


# instance fields
.field bdate:Ljava/lang/String;

.field bigPhoto:Lcom/vkcoffee/android/Photo;

.field nickname:Ljava/lang/String;

.field phone:Ljava/lang/String;

.field photoCropRect:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 653
    invoke-direct {p0}, Lcom/vkcoffee/android/UserProfile;-><init>()V

    return-void
.end method
