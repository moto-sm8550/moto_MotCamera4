.class public final synthetic Lcom/motorola/camera/photometadata/MotMakerNotesParser$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:S


# direct methods
.method public synthetic constructor <init>(S)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-short p1, p0, Lcom/motorola/camera/photometadata/MotMakerNotesParser$$ExternalSyntheticLambda0;->f$0:S

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-short p0, p0, Lcom/motorola/camera/photometadata/MotMakerNotesParser$$ExternalSyntheticLambda0;->f$0:S

    check-cast p1, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    iget p1, p1, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->mCode:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
