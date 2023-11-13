.class public final Landroidx/core/app/NotificationCompat$Action;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# instance fields
.field public actionIntent:Landroid/app/PendingIntent;

.field public icon:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public mAllowGeneratedReplies:Z

.field public mAuthenticationRequired:Z

.field public final mExtras:Landroid/os/Bundle;

.field public mIcon:Landroidx/core/graphics/drawable/IconCompat;

.field public final mIsContextual:Z

.field public final mRemoteInputs:[Landroidx/core/app/RemoteInput;

.field public final mSemanticAction:I

.field public mShowsUserInterface:Z

.field public title:Ljava/lang/CharSequence;


# virtual methods
.method public final getIconCompat()Landroidx/core/graphics/drawable/IconCompat;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$Action;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    if-nez v0, :cond_0

    iget v0, p0, Landroidx/core/app/NotificationCompat$Action;->icon:I

    if-eqz v0, :cond_0

    const-string v1, ""

    .line 2
    invoke-static {v1, v0}, Landroidx/core/graphics/drawable/IconCompat;->createWithResource(Ljava/lang/String;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/app/NotificationCompat$Action;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    .line 3
    :cond_0
    iget-object p0, p0, Landroidx/core/app/NotificationCompat$Action;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    return-object p0
.end method
