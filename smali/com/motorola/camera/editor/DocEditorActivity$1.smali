.class public final Lcom/motorola/camera/editor/DocEditorActivity$1;
.super Ljava/lang/Object;
.source "DocEditorActivity.java"

# interfaces
.implements Lcom/motorola/camera/saving/SaveListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/editor/DocEditorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/editor/DocEditorActivity;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/editor/DocEditorActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/editor/DocEditorActivity$1;->this$0:Lcom/motorola/camera/editor/DocEditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSaveComplete(Lcom/motorola/camera/CameraData;)V
    .locals 2

    .line 1
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/editor/DocEditorActivity$1;->this$0:Lcom/motorola/camera/editor/DocEditorActivity;

    .line 3
    iget-object v0, v0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    .line 4
    iget-object v0, v0, Lcom/motorola/camera/editor/DocJpegHolder;->mJpegUri:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 5
    iget-object v0, p0, Lcom/motorola/camera/editor/DocEditorActivity$1;->this$0:Lcom/motorola/camera/editor/DocEditorActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 6
    iget-object p0, p0, Lcom/motorola/camera/editor/DocEditorActivity$1;->this$0:Lcom/motorola/camera/editor/DocEditorActivity;

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mSavedEdit:Z

    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final onSaveError(Lcom/motorola/camera/CameraData;)V
    .locals 2

    .line 1
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/editor/DocEditorActivity$1;->this$0:Lcom/motorola/camera/editor/DocEditorActivity;

    .line 3
    iget-object v0, v0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    .line 4
    iget-object v0, v0, Lcom/motorola/camera/editor/DocJpegHolder;->mJpegUri:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 5
    iget-object v0, p0, Lcom/motorola/camera/editor/DocEditorActivity$1;->this$0:Lcom/motorola/camera/editor/DocEditorActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 6
    iget-object p0, p0, Lcom/motorola/camera/editor/DocEditorActivity$1;->this$0:Lcom/motorola/camera/editor/DocEditorActivity;

    .line 7
    iput-boolean v1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mSavedEdit:Z

    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
