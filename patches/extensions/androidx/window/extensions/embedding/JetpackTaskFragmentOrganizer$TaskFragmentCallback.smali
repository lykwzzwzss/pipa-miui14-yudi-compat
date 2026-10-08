.class interface abstract Landroidx/window/extensions/embedding/JetpackTaskFragmentOrganizer$TaskFragmentCallback;
.super Ljava/lang/Object;
.source "JetpackTaskFragmentOrganizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/window/extensions/embedding/JetpackTaskFragmentOrganizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "TaskFragmentCallback"
.end annotation


# virtual methods
.method public abstract onActivityReparentToTask(ILandroid/content/Intent;Landroid/os/IBinder;)V
.end method

.method public abstract onTaskFragmentAppeared(Landroid/window/TaskFragmentInfo;)V
.end method

.method public abstract onTaskFragmentError(Landroid/window/TaskFragmentInfo;I)V
.end method

.method public abstract onTaskFragmentInfoChanged(Landroid/window/TaskFragmentInfo;)V
.end method

.method public abstract onTaskFragmentParentInfoChanged(Landroid/os/IBinder;Landroid/content/res/Configuration;)V
.end method

.method public abstract onTaskFragmentVanished(Landroid/window/TaskFragmentInfo;)V
.end method
