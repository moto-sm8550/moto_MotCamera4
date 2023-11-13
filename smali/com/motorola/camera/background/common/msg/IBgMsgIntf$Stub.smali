.class public abstract Lcom/motorola/camera/background/common/msg/IBgMsgIntf$Stub;
.super Landroid/os/Binder;
.source "IBgMsgIntf.java"

# interfaces
.implements Lcom/motorola/camera/background/common/msg/IBgMsgIntf;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/background/common/msg/IBgMsgIntf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/background/common/msg/IBgMsgIntf$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final synthetic $r8$clinit:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.motorola.camera.background.common.msg.IBgMsgIntf"

    .line 2
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/motorola/camera/background/common/msg/IBgMsgIntf;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.motorola.camera.background.common.msg.IBgMsgIntf"

    .line 1
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    instance-of v1, v0, Lcom/motorola/camera/background/common/msg/IBgMsgIntf;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Lcom/motorola/camera/background/common/msg/IBgMsgIntf;

    return-object v0

    .line 4
    :cond_1
    new-instance v0, Lcom/motorola/camera/background/common/msg/IBgMsgIntf$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/motorola/camera/background/common/msg/IBgMsgIntf$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public final onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "code",
            "data",
            "reply",
            "flags"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "com.motorola.camera.background.common.msg.IBgMsgIntf"

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_a

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eq p1, v0, :cond_5

    const/4 v4, 0x2

    if-eq p1, v4, :cond_0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 2
    :cond_0
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    sget-object p1, Lcom/motorola/camera/background/common/msg/MsgType;->CREATOR:Lcom/motorola/camera/background/common/msg/MsgType$CREATOR;

    invoke-virtual {p1, p2}, Lcom/motorola/camera/background/common/msg/MsgType$CREATOR;->createFromParcel(Landroid/os/Parcel;)Lcom/motorola/camera/background/common/msg/MsgType;

    move-result-object p1

    move-object v5, p1

    goto :goto_0

    :cond_1
    move-object v5, v3

    .line 6
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    .line 7
    sget-object p1, Lcom/motorola/camera/background/common/TaskId;->CREATOR:Lcom/motorola/camera/background/common/TaskId$CREATOR;

    invoke-virtual {p1, p2}, Lcom/motorola/camera/background/common/TaskId$CREATOR;->createFromParcel(Landroid/os/Parcel;)Lcom/motorola/camera/background/common/TaskId;

    move-result-object p1

    move-object v6, p1

    goto :goto_1

    :cond_2
    move-object v6, v3

    .line 8
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_3

    .line 10
    sget-object p1, Lcom/motorola/camera/background/common/ReturnCode;->CREATOR:Lcom/motorola/camera/background/common/ReturnCode$CREATOR;

    invoke-virtual {p1, p2}, Lcom/motorola/camera/background/common/ReturnCode$CREATOR;->createFromParcel(Landroid/os/Parcel;)Lcom/motorola/camera/background/common/ReturnCode;

    move-result-object v3

    :cond_3
    move-object v8, v3

    move-object v3, p0

    .line 11
    invoke-interface/range {v3 .. v8}, Lcom/motorola/camera/background/common/msg/IBgMsgIntf;->processCtlMsg(ILcom/motorola/camera/background/common/msg/MsgType;Lcom/motorola/camera/background/common/TaskId;Ljava/lang/String;Lcom/motorola/camera/background/common/ReturnCode;)Lcom/motorola/camera/background/common/ReturnCode;

    move-result-object p0

    .line 12
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p0, :cond_4

    .line 13
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    invoke-virtual {p0, p3, v0}, Lcom/motorola/camera/background/common/ReturnCode;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    .line 15
    :cond_4
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2
    return v0

    .line 16
    :cond_5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 17
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 18
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_6

    .line 19
    sget-object p1, Lcom/motorola/camera/background/common/msg/MsgType;->CREATOR:Lcom/motorola/camera/background/common/msg/MsgType$CREATOR;

    invoke-virtual {p1, p2}, Lcom/motorola/camera/background/common/msg/MsgType$CREATOR;->createFromParcel(Landroid/os/Parcel;)Lcom/motorola/camera/background/common/msg/MsgType;

    move-result-object p1

    move-object v5, p1

    goto :goto_3

    :cond_6
    move-object v5, v3

    .line 20
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_7

    .line 21
    sget-object p1, Lcom/motorola/camera/background/common/TaskId;->CREATOR:Lcom/motorola/camera/background/common/TaskId$CREATOR;

    invoke-virtual {p1, p2}, Lcom/motorola/camera/background/common/TaskId$CREATOR;->createFromParcel(Landroid/os/Parcel;)Lcom/motorola/camera/background/common/TaskId;

    move-result-object p1

    move-object v6, p1

    goto :goto_4

    :cond_7
    move-object v6, v3

    .line 22
    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 23
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_8

    .line 24
    sget-object p1, Lcom/motorola/camera/background/common/ReturnCode;->CREATOR:Lcom/motorola/camera/background/common/ReturnCode$CREATOR;

    invoke-virtual {p1, p2}, Lcom/motorola/camera/background/common/ReturnCode$CREATOR;->createFromParcel(Landroid/os/Parcel;)Lcom/motorola/camera/background/common/ReturnCode;

    move-result-object v3

    :cond_8
    move-object v8, v3

    move-object v3, p0

    .line 25
    invoke-interface/range {v3 .. v8}, Lcom/motorola/camera/background/common/msg/IBgMsgIntf;->processMsg(ILcom/motorola/camera/background/common/msg/MsgType;Lcom/motorola/camera/background/common/TaskId;Ljava/lang/String;Lcom/motorola/camera/background/common/ReturnCode;)Lcom/motorola/camera/background/common/ReturnCode;

    move-result-object p0

    .line 26
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p0, :cond_9

    .line 27
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 28
    invoke-virtual {p0, p3, v0}, Lcom/motorola/camera/background/common/ReturnCode;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_5

    .line 29
    :cond_9
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_5
    return v0

    .line 30
    :cond_a
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0
.end method
