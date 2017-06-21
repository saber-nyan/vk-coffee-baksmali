.class public Lcom/vkcoffee/android/api/ExtendedUserProfile$Contact;
.super Ljava/lang/Object;
.source "ExtendedUserProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/api/ExtendedUserProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Contact"
.end annotation


# instance fields
.field public email:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public user:Lcom/vkcoffee/android/UserProfile;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
