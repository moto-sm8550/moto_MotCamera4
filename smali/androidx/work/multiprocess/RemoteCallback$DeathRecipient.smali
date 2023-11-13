.class public final Landroidx/work/multiprocess/RemoteCallback$DeathRecipient;
.super Ljava/lang/Object;
.source "RemoteCallback.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/multiprocess/RemoteCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeathRecipient"
.end annotation


# instance fields
.field public final mCallback:Landroidx/work/multiprocess/RemoteCallback;


# direct methods
.method public constructor <init>(Landroidx/work/multiprocess/RemoteCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/work/multiprocess/RemoteCallback$DeathRecipient;->mCallback:Landroidx/work/multiprocess/RemoteCallback;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 1

    iget-object p0, p0, Landroidx/work/multiprocess/RemoteCallback$DeathRecipient;->mCallback:Landroidx/work/multiprocess/RemoteCallback;

    const-string v0, "Binder died"

    invoke-virtual {p0, v0}, Landroidx/work/multiprocess/RemoteCallback;->onFailure(Ljava/lang/String;)V

    return-void
.end method
