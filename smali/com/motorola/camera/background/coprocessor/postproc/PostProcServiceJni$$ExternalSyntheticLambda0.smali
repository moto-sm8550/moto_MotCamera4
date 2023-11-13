.class public final synthetic Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/background/common/msg/IBgMsgIntf;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/background/common/msg/IBgMsgIntf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/background/common/msg/IBgMsgIntf;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/background/common/msg/IBgMsgIntf;

    check-cast p1, Lcom/motorola/camera/background/common/msg/IBgMsgIntf;

    invoke-static {p0, p1}, Lcom/motorola/camera/background/coprocessor/postproc/PostProcServiceJni;->$r8$lambda$TwP5dQbK5YWZlSbzQTSyvB6IarA(Lcom/motorola/camera/background/common/msg/IBgMsgIntf;Lcom/motorola/camera/background/common/msg/IBgMsgIntf;)Z

    move-result p0

    return p0
.end method
