.class public Lcom/vkcoffee/android/api/ExtendedUserProfile$Employer;
.super Ljava/lang/Object;
.source "ExtendedUserProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/api/ExtendedUserProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Employer"
.end annotation


# instance fields
.field public city:Ljava/lang/String;

.field public group:Lcom/vkcoffee/android/api/Group;

.field public position:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public yearFrom:I

.field public yearTo:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
